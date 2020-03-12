module sigs.k8s.io/azurefile-csi-driver

go 1.13

require (
	github.com/Azure/azure-sdk-for-go v35.0.0+incompatible
	github.com/Azure/azure-storage-file-go v0.5.0
	github.com/Azure/go-autorest/autorest v0.9.6
	github.com/Azure/go-autorest/autorest/adal v0.8.2
	github.com/Azure/go-autorest/autorest/to v0.2.0
	github.com/PuerkitoBio/purell v1.1.1 // indirect
	github.com/container-storage-interface/spec v1.1.0
	github.com/coreos/bbolt v1.3.2 // indirect
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f // indirect
	github.com/docker/distribution v0.0.0-20170905204447-5db89f0ca686 // indirect
	github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c // indirect
	github.com/elazarl/goproxy v0.0.0-20190410145444-c548f45dcf1d // indirect
	github.com/elazarl/goproxy/ext v0.0.0-20190410145444-c548f45dcf1d // indirect
	github.com/fatih/camelcase v1.0.0 // indirect
	github.com/go-openapi/swag v0.19.0 // indirect
	github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef // indirect
	github.com/golang/protobuf v1.3.2
	github.com/googleapis/gnostic v0.2.0 // indirect
	github.com/gregjones/httpcache v0.0.0-20190212212710-3befbb6ad0cc // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/kubernetes-csi/external-snapshotter v1.0.1
	github.com/onsi/ginkgo v1.10.1
	github.com/onsi/gomega v1.7.0
	github.com/opencontainers/go-digest v1.0.0-rc1 // indirect
	github.com/pborman/uuid v1.2.0
	github.com/pelletier/go-toml v1.4.0
	github.com/prometheus/client_golang v1.0.0
	github.com/rubiojr/go-vhd v0.0.0-20160810183302-0bfd3b39853c
	github.com/spf13/afero v1.2.2 // indirect
	github.com/stretchr/testify v1.4.0
	github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5 // indirect
	github.com/ugorji/go v1.1.4 // indirect
	go.etcd.io/bbolt v0.0.0-00010101000000-000000000000 // indirect
	golang.org/x/net v0.0.0-20191004110552-13f9640d40b9
	golang.org/x/time v0.0.0-20181108054448-85acf8d2951c // indirect
	google.golang.org/grpc v1.23.1
	gopkg.in/square/go-jose.v2 v2.3.0 // indirect
	k8s.io/api v0.0.0
	k8s.io/apimachinery v0.0.0
	k8s.io/client-go v0.0.0
	k8s.io/cloud-provider v0.0.0
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.15.0
	k8s.io/legacy-cloud-providers v0.0.0
	sigs.k8s.io/yaml v1.1.0
)

replace (
	bitbucket.org/bertimus9/systemstat => bitbucket.org/bertimus9/systemstat v0.0.0-20180207000608-0eeff89b0690
	cloud.google.com/go => cloud.google.com/go v0.34.0
	contrib.go.opencensus.io/exporter/ocagent => contrib.go.opencensus.io/exporter/ocagent v0.2.0
	git.apache.org/thrift.git => github.com/apache/thrift v0.0.0-20180902110319-2566ecd5d999
	github.com/Azure/azure-pipeline-go => github.com/Azure/azure-pipeline-go v0.2.1
	github.com/Azure/azure-sdk-for-go => github.com/Azure/azure-sdk-for-go v35.0.0+incompatible
	github.com/Azure/azure-storage-file-go => github.com/Azure/azure-storage-file-go v0.5.0
	github.com/Azure/go-ansiterm => github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v13.3.1+incompatible
	github.com/Azure/go-autorest/autorest => github.com/Azure/go-autorest/autorest v0.9.6
	github.com/Azure/go-autorest/autorest/adal => github.com/Azure/go-autorest/autorest/adal v0.8.2
	github.com/Azure/go-autorest/autorest/date => github.com/Azure/go-autorest/autorest/date v0.1.0
	github.com/Azure/go-autorest/autorest/mocks => github.com/Azure/go-autorest/autorest/mocks v0.2.0
	github.com/Azure/go-autorest/autorest/to => github.com/Azure/go-autorest/autorest/to v0.2.0
	github.com/Azure/go-autorest/autorest/validation => github.com/Azure/go-autorest/autorest/validation v0.1.0
	github.com/Azure/go-autorest/logger => github.com/Azure/go-autorest/logger v0.1.0
	github.com/Azure/go-autorest/tracing => github.com/Azure/go-autorest/tracing v0.5.0
	github.com/BurntSushi/toml => github.com/BurntSushi/toml v0.3.1
	github.com/GoogleCloudPlatform/k8s-cloud-provider => github.com/GoogleCloudPlatform/k8s-cloud-provider v0.0.0-20181220005116-f8e995905100
	github.com/JeffAshton/win_pdh => github.com/JeffAshton/win_pdh v0.0.0-20161109143554-76bb4ee9f0ab
	github.com/MakeNowJust/heredoc => github.com/MakeNowJust/heredoc v0.0.0-20170808103936-bb23615498cd
	github.com/Microsoft/go-winio => github.com/Microsoft/go-winio v0.4.11
	github.com/Microsoft/hcsshim => github.com/Microsoft/hcsshim v0.8.6
	github.com/NYTimes/gziphandler => github.com/NYTimes/gziphandler v0.0.0-20170623195520-56545f4a5d46
	github.com/PuerkitoBio/purell => github.com/PuerkitoBio/purell v1.1.1
	github.com/PuerkitoBio/urlesc => github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578
	github.com/Rican7/retry => github.com/Rican7/retry v0.1.0
	github.com/alecthomas/template => github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc
	github.com/alecthomas/units => github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf
	github.com/armon/circbuf => github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e
	github.com/asaskevich/govalidator => github.com/asaskevich/govalidator v0.0.0-20180720115003-f9ffefc3facf
	github.com/auth0/go-jwt-middleware => github.com/auth0/go-jwt-middleware v0.0.0-20170425171159-5493cabe49f7
	github.com/aws/aws-sdk-go => github.com/aws/aws-sdk-go v1.16.26
	github.com/bazelbuild/bazel-gazelle => github.com/bazelbuild/bazel-gazelle v0.0.0-20181012220611-c728ce9f663e
	github.com/bazelbuild/buildtools => github.com/bazelbuild/buildtools v0.0.0-20180226164855-80c7f0d45d7e
	github.com/beorn7/perks => github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973
	github.com/blang/semver => github.com/blang/semver v3.5.0+incompatible
	github.com/boltdb/bolt => github.com/boltdb/bolt v1.3.1
	github.com/census-instrumentation/opencensus-proto => github.com/census-instrumentation/opencensus-proto v0.1.0
	github.com/cespare/prettybench => github.com/cespare/prettybench v0.0.0-20150116022406-03b8cfe5406c
	github.com/chai2010/gettext-go => github.com/chai2010/gettext-go v0.0.0-20160711120539-c6fed771bfd5
	github.com/client9/misspell => github.com/client9/misspell v0.3.4
	github.com/cloudflare/cfssl => github.com/cloudflare/cfssl v0.0.0-20180726162950-56268a613adf
	github.com/clusterhq/flocker-go => github.com/clusterhq/flocker-go v0.0.0-20160920122132-2b8b7259d313
	github.com/codedellemc/goscaleio => github.com/codedellemc/goscaleio v0.0.0-20170830184815-20e2ce2cf885
	github.com/codegangsta/negroni => github.com/codegangsta/negroni v1.0.0
	github.com/container-storage-interface/spec => github.com/container-storage-interface/spec v1.1.0
	github.com/containerd/console => github.com/containerd/console v0.0.0-20170925154832-84eeaae905fa
	github.com/containerd/containerd => github.com/containerd/containerd v1.0.2
	github.com/containerd/typeurl => github.com/containerd/typeurl v0.0.0-20190228175220-2a93cfde8c20
	github.com/containernetworking/cni => github.com/containernetworking/cni v0.6.0
	github.com/coreos/bbolt => github.com/coreos/bbolt v1.3.2
	github.com/coreos/etcd => github.com/coreos/etcd v3.3.12+incompatible
	github.com/coreos/go-oidc => github.com/coreos/go-oidc v0.0.0-20180117170138-065b426bd416
	github.com/coreos/go-semver => github.com/coreos/go-semver v0.3.0
	github.com/coreos/go-systemd => github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e
	github.com/coreos/pkg => github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f
	github.com/coreos/rkt => github.com/coreos/rkt v1.30.0
	github.com/cpuguy83/go-md2man => github.com/cpuguy83/go-md2man v1.0.4
	github.com/cyphar/filepath-securejoin => github.com/cyphar/filepath-securejoin v0.0.0-20170720062807-ae69057f2299
	github.com/d2g/dhcp4 => github.com/d2g/dhcp4 v0.0.0-20170904100407-a1d1b6c41b1c
	github.com/d2g/dhcp4client => github.com/d2g/dhcp4client v0.0.0-20170829104524-6e570ed0a266
	github.com/davecgh/go-spew => github.com/davecgh/go-spew v1.1.1
	github.com/daviddengcn/go-colortext => github.com/daviddengcn/go-colortext v0.0.0-20160507010035-511bcaf42ccd
	github.com/dgrijalva/jwt-go => github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/dnaeon/go-vcr => github.com/dnaeon/go-vcr v1.0.1
	github.com/docker/distribution => github.com/docker/distribution v0.0.0-20170905204447-5db89f0ca686
	github.com/docker/docker => github.com/docker/docker v0.7.3-0.20190327010347-be7ac8be2ae0
	github.com/docker/go-connections => github.com/docker/go-connections v0.3.0
	github.com/docker/go-units => github.com/docker/go-units v0.3.3
	github.com/docker/libnetwork => github.com/docker/libnetwork v0.0.0-20180830151422-a9cd636e3789
	github.com/docker/spdystream => github.com/docker/spdystream v0.0.0-20181023171402-6480d4af844c
	github.com/elazarl/goproxy => github.com/elazarl/goproxy v0.0.0-20190410145444-c548f45dcf1d
	github.com/elazarl/goproxy/ext => github.com/elazarl/goproxy/ext v0.0.0-20190410145444-c548f45dcf1d
	github.com/emicklei/go-restful => github.com/emicklei/go-restful v2.9.3+incompatible
	github.com/euank/go-kmsg-parser => github.com/euank/go-kmsg-parser v2.0.0+incompatible
	github.com/evanphx/json-patch => github.com/evanphx/json-patch v3.0.0+incompatible
	github.com/exponent-io/jsonpath => github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d
	github.com/fatih/camelcase => github.com/fatih/camelcase v1.0.0
	github.com/fsnotify/fsnotify => github.com/fsnotify/fsnotify v1.4.7
	github.com/ghodss/yaml => github.com/ghodss/yaml v1.0.0
	github.com/globalsign/mgo => github.com/globalsign/mgo v0.0.0-20180905125535-1ca0a4f7cbcb
	github.com/go-kit/kit => github.com/go-kit/kit v0.8.0
	github.com/go-logfmt/logfmt => github.com/go-logfmt/logfmt v0.3.0
	github.com/go-openapi/analysis => github.com/go-openapi/analysis v0.17.0
	github.com/go-openapi/errors => github.com/go-openapi/errors v0.17.0
	github.com/go-openapi/jsonpointer => github.com/go-openapi/jsonpointer v0.19.0
	github.com/go-openapi/jsonreference => github.com/go-openapi/jsonreference v0.19.0
	github.com/go-openapi/loads => github.com/go-openapi/loads v0.17.2
	github.com/go-openapi/runtime => github.com/go-openapi/runtime v0.0.0-20180920151709-4f900dc2ade9
	github.com/go-openapi/spec => github.com/go-openapi/spec v0.19.0
	github.com/go-openapi/strfmt => github.com/go-openapi/strfmt v0.17.0
	github.com/go-openapi/swag => github.com/go-openapi/swag v0.19.0
	github.com/go-openapi/validate => github.com/go-openapi/validate v0.18.0
	github.com/go-ozzo/ozzo-validation => github.com/go-ozzo/ozzo-validation v3.5.0+incompatible
	github.com/go-stack/stack => github.com/go-stack/stack v1.8.0
	github.com/godbus/dbus => github.com/godbus/dbus v0.0.0-20151105175453-c7fdd8b5cd55
	github.com/gogo/protobuf => github.com/gogo/protobuf v1.2.1
	github.com/golang/glog => github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/groupcache => github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef
	github.com/golang/mock => github.com/golang/mock v1.1.1
	github.com/golang/protobuf => github.com/golang/protobuf v1.3.0
	github.com/golangplus/bytes => github.com/golangplus/bytes v0.0.0-20160111154220-45c989fe5450
	github.com/golangplus/fmt => github.com/golangplus/fmt v0.0.0-20150411045040-2a5d6d7d2995
	github.com/golangplus/testing => github.com/golangplus/testing v0.0.0-20180327235837-af21d9c3145e
	github.com/google/btree => github.com/google/btree v1.0.0
	github.com/google/cadvisor => github.com/google/cadvisor v0.33.2-0.20190411163913-9db8c7dee20a
	github.com/google/certificate-transparency-go => github.com/google/certificate-transparency-go v1.0.21
	github.com/google/go-cmp => github.com/google/go-cmp v0.2.0
	github.com/google/gofuzz => github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf
	github.com/google/uuid => github.com/google/uuid v1.1.1
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.2.0
	github.com/gophercloud/gophercloud => github.com/gophercloud/gophercloud v0.1.0
	github.com/gopherjs/gopherjs => github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1
	github.com/gorilla/context => github.com/gorilla/context v1.1.1
	github.com/gorilla/mux => github.com/gorilla/mux v1.7.0
	github.com/gorilla/websocket => github.com/gorilla/websocket v1.4.0
	github.com/gregjones/httpcache => github.com/gregjones/httpcache v0.0.0-20190212212710-3befbb6ad0cc
	github.com/grpc-ecosystem/go-grpc-middleware => github.com/grpc-ecosystem/go-grpc-middleware v1.0.0
	github.com/grpc-ecosystem/go-grpc-prometheus => github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0
	github.com/grpc-ecosystem/grpc-gateway => github.com/grpc-ecosystem/grpc-gateway v1.5.0
	github.com/hashicorp/golang-lru => github.com/hashicorp/golang-lru v0.5.1
	github.com/hashicorp/hcl => github.com/hashicorp/hcl v0.0.0-20160711231752-d8c773c4cba1
	github.com/heketi/heketi => github.com/heketi/heketi v0.0.0-20181109135656-558b29266ce0
	github.com/heketi/rest => github.com/heketi/rest v0.0.0-20180404230133-aa6a65207413
	github.com/heketi/tests => github.com/heketi/tests v0.0.0-20151005000721-f3775cbcefd6
	github.com/heketi/utils => github.com/heketi/utils v0.0.0-20170317161834-435bc5bdfa64
	github.com/hpcloud/tail => github.com/hpcloud/tail v1.0.0
	github.com/imdario/mergo => github.com/imdario/mergo v0.3.7
	github.com/inconshreveable/mousetrap => github.com/inconshreveable/mousetrap v1.0.0
	github.com/jmespath/go-jmespath => github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/jonboulle/clockwork => github.com/jonboulle/clockwork v0.1.0
	github.com/json-iterator/go => github.com/json-iterator/go v1.1.5
	github.com/jstemmer/go-junit-report => github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024
	github.com/jteeuwen/go-bindata => github.com/jteeuwen/go-bindata v0.0.0-20151023091102-a0ff2567cfb7
	github.com/jtolds/gls => github.com/jtolds/gls v4.20.0+incompatible
	github.com/julienschmidt/httprouter => github.com/julienschmidt/httprouter v1.2.0
	github.com/kardianos/osext => github.com/kardianos/osext v0.0.0-20150410034420-8fef92e41e22
	github.com/karrick/godirwalk => github.com/karrick/godirwalk v1.7.5
	github.com/kisielk/errcheck => github.com/kisielk/errcheck v1.1.0
	github.com/kisielk/gotool => github.com/kisielk/gotool v1.0.0
	github.com/konsorten/go-windows-terminal-sequences => github.com/konsorten/go-windows-terminal-sequences v1.0.1
	github.com/kr/fs => github.com/kr/fs v0.0.0-20131111012553-2788f0dbd169
	github.com/kr/logfmt => github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515
	github.com/kr/pretty => github.com/kr/pretty v0.1.0
	github.com/kr/pty => github.com/kr/pty v1.1.5
	github.com/kr/text => github.com/kr/text v0.1.0
	github.com/kubernetes-csi/csi-test => github.com/kubernetes-csi/csi-test v2.2.0+incompatible
	github.com/kubernetes-csi/external-snapshotter => github.com/kubernetes-csi/external-snapshotter v1.0.1
	github.com/libopenstorage/openstorage => github.com/libopenstorage/openstorage v0.0.0-20170906232338-093a0c388875
	github.com/liggitt/tabwriter => github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de
	github.com/lithammer/dedent => github.com/lithammer/dedent v1.1.0
	github.com/lpabon/godbc => github.com/lpabon/godbc v0.1.1
	github.com/magiconair/properties => github.com/magiconair/properties v0.0.0-20160816085511-61b492c03cf4
	github.com/mailru/easyjson => github.com/mailru/easyjson v0.0.0-20190312143242-1de009706dbe
	github.com/marstr/guid => github.com/marstr/guid v1.1.0
	github.com/mattn/go-ieproxy => github.com/mattn/go-ieproxy v0.0.0-20190610004146-91bb50d98149
	github.com/mattn/go-shellwords => github.com/mattn/go-shellwords v0.0.0-20180605041737-f8471b0a71de
	github.com/matttproud/golang_protobuf_extensions => github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/mesos/mesos-go => github.com/mesos/mesos-go v0.0.9
	github.com/mholt/caddy => github.com/mholt/caddy v0.0.0-20180213163048-2de495001514
	github.com/miekg/dns => github.com/miekg/dns v0.0.0-20160614162101-5d001d020961
	github.com/mindprince/gonvml => github.com/mindprince/gonvml v0.0.0-20171110221305-fee913ce8fb2
	github.com/mistifyio/go-zfs => github.com/mistifyio/go-zfs v0.0.0-20151009155749-1b4ae6fb4e77
	github.com/mitchellh/go-wordwrap => github.com/mitchellh/go-wordwrap v0.0.0-20150314170334-ad45545899c7
	github.com/mitchellh/mapstructure => github.com/mitchellh/mapstructure v1.1.2
	github.com/modern-go/concurrent => github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 => github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742
	github.com/mohae/deepcopy => github.com/mohae/deepcopy v0.0.0-20170603005431-491d3605edfb
	github.com/morikuni/aec => github.com/morikuni/aec v0.0.0-20170113033406-39771216ff4c
	github.com/mrunalp/fileutils => github.com/mrunalp/fileutils v0.0.0-20160930181131-4ee1cc9a8058
	github.com/munnerz/goautoneg => github.com/munnerz/goautoneg v0.0.0-20120707110453-a547fc61f48d
	github.com/mvdan/xurls => github.com/mvdan/xurls v0.0.0-20160110113200-1b768d7c393a
	github.com/mwitkow/go-conntrack => github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223
	github.com/mxk/go-flowrate => github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f
	github.com/natefinch/lumberjack => github.com/natefinch/lumberjack v2.0.0+incompatible
	github.com/onsi/ginkgo => github.com/onsi/ginkgo v1.7.0
	github.com/onsi/gomega => github.com/onsi/gomega v1.4.3
	github.com/opencontainers/go-digest => github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/opencontainers/image-spec => github.com/opencontainers/image-spec v0.0.0-20170604055404-372ad780f634
	github.com/opencontainers/runc => github.com/opencontainers/runc v0.0.0-20181113202123-f000fe11ece1
	github.com/opencontainers/runtime-spec => github.com/opencontainers/runtime-spec v1.0.0
	github.com/opencontainers/selinux => github.com/opencontainers/selinux v0.0.0-20170621221121-4a2974bf1ee9
	github.com/openzipkin/zipkin-go => github.com/openzipkin/zipkin-go v0.1.1
	github.com/pborman/uuid => github.com/pborman/uuid v0.0.0-20180906182336-adf5a7427709
	github.com/pelletier/go-toml => github.com/pelletier/go-toml v1.4.0
	github.com/peterbourgon/diskv => github.com/peterbourgon/diskv v2.0.1+incompatible
	github.com/pkg/errors => github.com/pkg/errors v0.8.1
	github.com/pkg/sftp => github.com/pkg/sftp v0.0.0-20160930220758-4d0e916071f6
	github.com/pmezard/go-difflib => github.com/pmezard/go-difflib v1.0.0
	github.com/pquerna/cachecontrol => github.com/pquerna/cachecontrol v0.0.0-20171018203845-0dec1b30a021
	github.com/pquerna/ffjson => github.com/pquerna/ffjson v0.0.0-20180717144149-af8b230fcd20
	github.com/prometheus/client_golang => github.com/prometheus/client_golang v0.9.2
	github.com/prometheus/client_model => github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90
	github.com/prometheus/common => github.com/prometheus/common v0.2.0
	github.com/prometheus/procfs => github.com/prometheus/procfs v0.0.0-20190306233201-d0f344d83b0c
	github.com/quobyte/api => github.com/quobyte/api v0.1.2
	github.com/remyoudompheng/bigfft => github.com/remyoudompheng/bigfft v0.0.0-20170806203942-52369c62f446
	github.com/robfig/cron => github.com/robfig/cron v0.0.0-20170309132418-df38d32658d8
	github.com/rogpeppe/go-charset => github.com/rogpeppe/go-charset v0.0.0-20180617210344-2471d30d28b4
	github.com/rubiojr/go-vhd => github.com/rubiojr/go-vhd v0.0.0-20160810183302-0bfd3b39853c
	github.com/russross/blackfriday => github.com/russross/blackfriday v0.0.0-20151117072312-300106c228d5
	github.com/satori/go.uuid => github.com/satori/go.uuid v1.2.0
	github.com/seccomp/libseccomp-golang => github.com/seccomp/libseccomp-golang v0.0.0-20150813023252-1b506fc7c24e
	github.com/shurcooL/sanitized_anchor_name => github.com/shurcooL/sanitized_anchor_name v0.0.0-20151028001915-10ef21a441db
	github.com/sigma/go-inotify => github.com/sigma/go-inotify v0.0.0-20181102212354-c87b6cf5033d
	github.com/sirupsen/logrus => github.com/sirupsen/logrus v1.2.0
	github.com/smartystreets/assertions => github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d
	github.com/smartystreets/goconvey => github.com/smartystreets/goconvey v0.0.0-20190330032615-68dc04aab96a
	github.com/soheilhy/cmux => github.com/soheilhy/cmux v0.1.4
	github.com/spf13/afero => github.com/spf13/afero v1.2.2
	github.com/spf13/cast => github.com/spf13/cast v0.0.0-20160730092037-e31f36ffc91a
	github.com/spf13/cobra => github.com/spf13/cobra v0.0.3
	github.com/spf13/jwalterweatherman => github.com/spf13/jwalterweatherman v0.0.0-20160311093646-33c24e77fb80
	github.com/spf13/pflag => github.com/spf13/pflag v1.0.3
	github.com/spf13/viper => github.com/spf13/viper v0.0.0-20160820190039-7fb2782df3d8
	github.com/storageos/go-api => github.com/storageos/go-api v0.0.0-20180912212459-343b3eff91fc
	github.com/stretchr/objx => github.com/stretchr/objx v0.1.1
	github.com/stretchr/testify => github.com/stretchr/testify v1.3.0
	github.com/syndtr/gocapability => github.com/syndtr/gocapability v0.0.0-20160928074757-e7cb7fa329f4
	github.com/tmc/grpc-websocket-proxy => github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5
	github.com/ugorji/go => github.com/ugorji/go v1.1.4
	github.com/urfave/negroni => github.com/urfave/negroni v1.0.0
	github.com/vishvananda/netlink => github.com/vishvananda/netlink v0.0.0-20171020171820-b2de5d10e38e
	github.com/vishvananda/netns => github.com/vishvananda/netns v0.0.0-20171111001504-be1fbeda1936
	github.com/vmware/govmomi => github.com/vmware/govmomi v0.20.1
	github.com/vmware/photon-controller-go-sdk => github.com/vmware/photon-controller-go-sdk v0.0.0-20170310013346-4a435daef6cc
	github.com/xanzy/go-cloudstack => github.com/xanzy/go-cloudstack v0.0.0-20160728180336-1e2cbf647e57
	github.com/xiang90/probing => github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2
	github.com/xlab/handysort => github.com/xlab/handysort v0.0.0-20150421192137-fb3537ed64a1
	go.etcd.io/bbolt => go.etcd.io/bbolt v1.3.2
	go.opencensus.io => go.opencensus.io v0.18.0
	go.uber.org/atomic => go.uber.org/atomic v1.3.2
	go.uber.org/multierr => go.uber.org/multierr v1.1.0
	go.uber.org/zap => go.uber.org/zap v1.9.1
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20190228161510-8dd112bcdc25
	golang.org/x/exp => golang.org/x/exp v0.0.0-20190121172915-509febef88a4
	golang.org/x/lint => golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961
	golang.org/x/net => golang.org/x/net v0.0.0-20190301231341-16b79f2e4e95
	golang.org/x/oauth2 => golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421
	golang.org/x/sync => golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190308023053-584f3b12f43e
	golang.org/x/text => golang.org/x/text v0.3.0
	golang.org/x/time => golang.org/x/time v0.0.0-20181108054448-85acf8d2951c
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190226205152-f727befe758c
	gonum.org/v1/gonum => gonum.org/v1/gonum v0.0.0-20190331200053-3d26580ed485
	gonum.org/v1/netlib => gonum.org/v1/netlib v0.0.0-20190331212654-76723241ea4e
	google.golang.org/api => google.golang.org/api v0.1.0
	google.golang.org/appengine => google.golang.org/appengine v1.4.0
	google.golang.org/genproto => google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19
	google.golang.org/grpc => google.golang.org/grpc v1.19.0
	gopkg.in/alecthomas/kingpin.v2 => gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/check.v1 => gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405
	gopkg.in/fsnotify.v1 => gopkg.in/fsnotify.v1 v1.4.7
	gopkg.in/gcfg.v1 => gopkg.in/gcfg.v1 v1.2.0
	gopkg.in/inf.v0 => gopkg.in/inf.v0 v0.9.1
	gopkg.in/natefinch/lumberjack.v2 => gopkg.in/natefinch/lumberjack.v2 v2.0.0-20150622162204-20b71e5b60d7
	gopkg.in/square/go-jose.v2 => gopkg.in/square/go-jose.v2 v2.3.0
	gopkg.in/tomb.v1 => gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7
	gopkg.in/warnings.v0 => gopkg.in/warnings.v0 v0.1.1
	gopkg.in/yaml.v1 => gopkg.in/yaml.v1 v1.0.0-20140924161607-9f9df34309c0
	gopkg.in/yaml.v2 => gopkg.in/yaml.v2 v2.2.2
	gotest.tools => gotest.tools v2.2.0+incompatible
	honnef.co/go/tools => honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099
	k8s.io/api => k8s.io/kubernetes/staging/src/k8s.io/api v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/apiextensions-apiserver => k8s.io/kubernetes/staging/src/k8s.io/apiextensions-apiserver v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/apimachinery => k8s.io/kubernetes/staging/src/k8s.io/apimachinery v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/apiserver => k8s.io/kubernetes/staging/src/k8s.io/apiserver v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/cli-runtime => k8s.io/kubernetes/staging/src/k8s.io/cli-runtime v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/client-go => k8s.io/kubernetes/staging/src/k8s.io/client-go v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.0.0-20191222120112-8c84d3f9e095
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.0.0-20190313124217-0fa624df11e9
	k8s.io/code-generator v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/code-generator v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/component-base v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/component-base v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/cri-api v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/cri-api v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.0.0-20190313124639-7f5cabc6aac8
	k8s.io/gengo => k8s.io/gengo v0.0.0-20190822140433-26a664648505
	k8s.io/heapster => k8s.io/heapster v1.2.0-beta.1
	k8s.io/klog => k8s.io/klog v0.2.0
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.0.0-20190401185513-77f9841f26eb
	k8s.io/kube-controller-manager v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/kube-controller-manager v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20190306001800-15615b16d372
	k8s.io/kube-proxy v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/kube-proxy v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/kube-scheduler v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/kube-scheduler v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/kubelet v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/kubelet v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/kubernetes => k8s.io/kubernetes v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/legacy-cloud-providers v0.0.0 => k8s.io/legacy-cloud-providers v0.0.0-20191231115903-c0243ebb3644
	k8s.io/metrics v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/metrics v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/repo-infra => k8s.io/repo-infra v0.0.0-20181204233714-00fe14e3d1a3
	k8s.io/sample-apiserver v0.0.0 => k8s.io/kubernetes/staging/src/k8s.io/sample-apiserver v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/test v0.0.0 => k8s.io/kubernetes/test v0.0.0-20191225091142-7aa9cde6210f
	k8s.io/utils => k8s.io/utils v0.0.0-20190221042446-c2654d5206da
	modernc.org/cc => modernc.org/cc v1.0.0
	modernc.org/golex => modernc.org/golex v1.0.0
	modernc.org/mathutil => modernc.org/mathutil v1.0.0
	modernc.org/strutil => modernc.org/strutil v1.0.0
	modernc.org/xc => modernc.org/xc v1.0.0
	sigs.k8s.io/kustomize => sigs.k8s.io/kustomize v2.0.3+incompatible
	sigs.k8s.io/structured-merge-diff => sigs.k8s.io/structured-merge-diff v0.0.0-20190302045857-e85c7b244fd2
	sigs.k8s.io/yaml => sigs.k8s.io/yaml v1.1.0
	vbom.ml/util => vbom.ml/util v0.0.0-20160121211510-db5cfe13f5cc
)
