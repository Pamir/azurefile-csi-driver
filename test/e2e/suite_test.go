/*
Copyright 2019 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package e2e

import (
	"context"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"strings"
	"testing"

	"github.com/onsi/ginkgo"
	"github.com/onsi/ginkgo/reporters"
	"github.com/onsi/gomega"
	"github.com/pborman/uuid"
	"k8s.io/kubernetes/test/e2e/framework"
	"sigs.k8s.io/azurefile-csi-driver/pkg/azurefile"
	"sigs.k8s.io/azurefile-csi-driver/test/e2e/driver"
	"sigs.k8s.io/azurefile-csi-driver/test/utils/azure"
	"sigs.k8s.io/azurefile-csi-driver/test/utils/credentials"
	"sigs.k8s.io/azurefile-csi-driver/test/utils/testutil"
)

const (
	kubeconfigEnvVar   = "KUBECONFIG"
	reportDirEnv       = "ARTIFACTS"
	testWindowsEnvVar  = "TEST_WINDOWS"
	defaultReportDir   = "/workspace/_artifacts"
	inTreeStorageClass = "kubernetes.io/azure-file"
)

var (
	azurefileDriver           *azurefile.Driver
	isUsingInTreeVolumePlugin = os.Getenv(driver.AzureDriverNameVar) == inTreeStorageClass
	isWindowsCluster          = os.Getenv(testWindowsEnvVar) != ""
)

type testCmd struct {
	command  string
	args     []string
	startLog string
	endLog   string
}

var _ = ginkgo.BeforeSuite(func() {
	// k8s.io/kubernetes/test/e2e/framework requires env KUBECONFIG to be set
	// it does not fall back to defaults
	if os.Getenv(kubeconfigEnvVar) == "" {
		kubeconfig := filepath.Join(os.Getenv("HOME"), ".kube", "config")
		os.Setenv(kubeconfigEnvVar, kubeconfig)
	}
	framework.HandleFlags()
	framework.AfterReadingAllFlags(&framework.TestContext)

	if !isUsingInTreeVolumePlugin && testutil.IsRunningInProw() {
		creds, err := credentials.CreateAzureCredentialFile(false)
		gomega.Expect(err).NotTo(gomega.HaveOccurred())
		azureClient, err := azure.GetAzureClient(creds.Cloud, creds.SubscriptionID, creds.AADClientID, creds.TenantID, creds.AADClientSecret)
		gomega.Expect(err).NotTo(gomega.HaveOccurred())
		_, err = azureClient.EnsureResourceGroup(context.Background(), creds.ResourceGroup, creds.Location, nil)
		gomega.Expect(err).NotTo(gomega.HaveOccurred())

		// Install Azure File CSI Driver on cluster from project root
		e2eBootstrap := testCmd{
			command:  "make",
			args:     []string{"e2e-bootstrap"},
			startLog: "Installing Azure File CSI Driver...",
			endLog:   "Azure File CSI Driver installed",
		}
		execTestCmd([]testCmd{e2eBootstrap})

		nodeid := os.Getenv("nodeid")
		azurefileDriver = azurefile.NewDriver(nodeid)
		go func() {
			os.Setenv("AZURE_CREDENTIAL_FILE", credentials.TempAzureCredentialFilePath)
			azurefileDriver.Run(fmt.Sprintf("unix:///tmp/csi-%s.sock", uuid.NewUUID().String()))
		}()
	}
})

var _ = ginkgo.AfterSuite(func() {
	if !isUsingInTreeVolumePlugin && testutil.IsRunningInProw() {
		azurefileLog := testCmd{
			command:  "sh",
			args:     []string{"test/utils/azurefile_log.sh"},
			startLog: "===================azurefile log===================",
			endLog:   "===================================================",
		}
		e2eTeardown := testCmd{
			command:  "make",
			args:     []string{"e2e-teardown"},
			startLog: "Uninstalling Azure File CSI Driver...",
			endLog:   "Azure File CSI Driver uninstalled",
		}
		execTestCmd([]testCmd{azurefileLog, e2eTeardown})

		err := credentials.DeleteAzureCredentialFile()
		gomega.Expect(err).NotTo(gomega.HaveOccurred())
	}
})

func TestE2E(t *testing.T) {
	gomega.RegisterFailHandler(ginkgo.Fail)
	reportDir := os.Getenv(reportDirEnv)
	if reportDir == "" {
		reportDir = defaultReportDir
	}
	r := []ginkgo.Reporter{reporters.NewJUnitReporter(path.Join(reportDir, "junit_01.xml"))}
	ginkgo.RunSpecsWithDefaultAndCustomReporters(t, "AzureFile CSI Driver End-to-End Tests", r)
}

func execTestCmd(cmds []testCmd) {
	err := os.Chdir("../..")
	gomega.Expect(err).NotTo(gomega.HaveOccurred())
	defer func() {
		err := os.Chdir("test/e2e")
		gomega.Expect(err).NotTo(gomega.HaveOccurred())
	}()

	projectRoot, err := os.Getwd()
	gomega.Expect(err).NotTo(gomega.HaveOccurred())
	gomega.Expect(strings.HasSuffix(projectRoot, "azurefile-csi-driver")).To(gomega.Equal(true))

	for _, cmd := range cmds {
		log.Println(cmd.startLog)
		cmdSh := exec.Command(cmd.command, cmd.args...)
		cmdSh.Dir = projectRoot
		cmdSh.Stdout = os.Stdout
		cmdSh.Stderr = os.Stderr
		err = cmdSh.Run()
		gomega.Expect(err).NotTo(gomega.HaveOccurred())
		log.Println(cmd.endLog)
	}
}

func skipIfTestingInWindowsCluster() {
	if isWindowsCluster {
		ginkgo.Skip("test case not supported by Windows clusters")
	}
}

func skipIfUsingInTreeVolumePlugin() {
	if isUsingInTreeVolumePlugin {
		ginkgo.Skip("test case is only available for CSI drivers")
	}
}

func convertToPowershellCommandIfNecessary(command string) string {
	if !isWindowsCluster {
		return command
	}

	switch command {
	case "echo 'hello world' > /mnt/test-1/data && grep 'hello world' /mnt/test-1/data":
		return "echo 'hello world' | Out-File -FilePath C:\\mnt\\test-1\\data.txt; Get-Content C:\\mnt\\test-1\\data.txt | findstr 'hello world'"
	case "touch /mnt/test-1/data":
		return "echo $null >> C:\\mnt\\test-1\\data"
	case "while true; do echo $(date -u) >> /mnt/test-1/data; sleep 1; done":
		return "while (1) { Add-Content C:\\mnt\\test-1\\data.txt $(Get-Date -Format u); sleep 1 }"
	case "echo 'hello world' >> /mnt/test-1/data && while true; do sleep 1; done":
		return "Add-Content C:\\mnt\\test-1\\data.txt 'hello world'; while (1) { sleep 1 }"
	}

	return command
}
