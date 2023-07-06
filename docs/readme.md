## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:



If you had already added this repo earlier, run Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "tid" chart repository
...Successfully got an update from the "kiali" chart repository
...Successfully got an update from the "vmware-tanzu" chart repository
...Successfully got an update from the "grafana" chart repository
...Successfully got an update from the "external-dns" chart repository
...Successfully got an update from the "bitnami" chart repository
Update Complete. ⎈Happy Helming!⎈ to retrieve
the latest versions of the packages.  You can then run NAME                          	CHART VERSION	APP VERSION	DESCRIPTION                                       
bitnami/common                	2.6.0        	2.6.0      	A Library Helm Chart for grouping common logic ...
bitnami/dataplatform-bp2      	12.0.5       	1.0.1      	DEPRECATED This Helm chart can be used for the ...
external-dns/common           	2.6.0        	2.6.0      	A Library Helm Chart for grouping common logic ...
external-dns/dataplatform-bp2 	12.0.5       	1.0.1      	DEPRECATED This Helm chart can be used for the ...
grafana/grafana               	0.2.1        	           	A Helm chart for Kubernetes                       
grafana/grafana-agent-operator	0.2.16       	0.34.1     	A Helm chart for Grafana Agent Operator           
grafana/k8s-monitoring        	0.0.5        	1.1.5      	A Helm chart for gathering, scraping, and forwa...
grafana/loki                  	5.8.9        	2.8.2      	Helm chart for Grafana Loki in simple, scalable...
grafana/loki-canary           	0.12.0       	2.8.2      	Helm chart for Grafana Loki Canary                
grafana/loki-distributed      	0.69.16      	2.8.2      	Helm chart for Grafana Loki in microservices mode 
grafana/loki-simple-scalable  	1.8.11       	2.6.1      	Helm chart for Grafana Loki in simple, scalable...
tid/tetrate-gateway           	1.17.2       	1.17.2     	Helm chart for deploying Istio Ingres Gateway     
vmware-tanzu/velero           	4.1.3        	1.11.0     	A Helm chart for velero                           
bitnami/flux                  	0.3.5        	0.36.1     	Flux is a tool for keeping Kubernetes clusters ...
bitnami/kubeapps              	12.4.6       	2.8.0      	Kubeapps is a web-based UI for launching and ma...
external-dns/flux             	0.3.5        	0.36.1     	Flux is a tool for keeping Kubernetes clusters ...
external-dns/kubeapps         	12.4.6       	2.8.0      	Kubeapps is a web-based UI for launching and ma... to see the charts.

To install the chart:



To uninstall the chart:


