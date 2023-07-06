# redcom-charts


## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```
  helm repo add redcom-charts https://redcom.github.io/helm
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo redcom-charts` to see the charts.

To install the chart:

```
    helm install <<chart_name>> redcom-charts/<<chart_name>> --version <<version>> --namespace <<namespace>> --create-namespace
```

To uninstall the chart:

```
    helm delete <<chart_name>> --namespace <<namespace>>
```
