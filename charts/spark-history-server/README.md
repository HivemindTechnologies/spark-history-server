# spark-history-server

[spark-history-server](https://github.com/HivemindTechnologies/spark-history-server) is a chart the spark history server.

## TL;DR

```console
helm repo add hvmnd-spark-history-server https://hivemindtechnologies.github.io/spark-history-server
helm install my-release hvmnd-spark-history-server/spark-history-server
```

## Introduction

This chart bootstraps a spark-history-server deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm install my-release hvmnd-spark-history-server/spark-history-server
```

The command deploys spark-history-server on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Parameters

### Common parameters

| Name                         | Description                                                                            | Value                                               |
| ---------------------------- | -------------------------------------------------------------------------------------- | --------------------------------------------------- |
| `replicaCount`               | Number of Spark history server replicas to deploy                                      | `1`                                                 |
| `image.repository`           | Spark history server image name                                                        | `ghcr.io/hivemindtechnologies/spark-history-server` |
| `image.tag`                  | Spark history server image pull policy                                                 | `""`                                                |
| `image.pullPolicy`           | Spark history server image tag                                                         | `IfNotPresent`                                      |
| `imagePullSecrets`           | Specify docker-registry secret names as an array                                       | `[]`                                                |
| `nameOverride`               | Override the name of the Spark history server                                          | `""`                                                |
| `fullnameOverride`           | Override the fullname of the Spark history server                                      | `""`                                                |
| `serviceAccount.create`      | Specifies whether a service account should be created                                  | `true`                                              |
| `serviceAccount.name`        | Specifies the name of the service account to use.                                      | `""`                                                |
| `serviceAccount.annotations` | Specifies annotations to add to the service account                                    | `{}`                                                |
| `podAnnotations`             | Specifies annotations to add to the Spark history server pods                          | `{}`                                                |
| `podSecurityContext`         | Specifies security context that will be applied to the Spark history server pods       | `{}`                                                |
| `securityContext`            | Specifies security context that will be applied to the Spark history server containers | `{}`                                                |


### Networking parameters

| Name                  | Description                                   | Value       |
| --------------------- | --------------------------------------------- | ----------- |
| `service.type`        | Specifies the type of service to create       | `ClusterIP` |
| `service.port`        | Specifies the port to expose                  | `80`        |
| `ingress.enabled`     | Specifies whether to create an ingress        | `false`     |
| `ingress.className`   | Specifies the class of the ingress            | `""`        |
| `ingress.annotations` | Specifies annotations to add to the ingress   | `{}`        |
| `ingress.hosts`       | Specifies the hostnames to map to the ingress | `[]`        |
| `ingress.tls`         | Specifies TLS configuration for the ingress   | `[]`        |


### Deployment parameters

| Name           | Description                                                       | Value |
| -------------- | ----------------------------------------------------------------- | ----- |
| `resources`    | Specifies resources to request for the Spark history server       | `{}`  |
| `nodeSelector` | Specifies node selector for the Spark history server              | `{}`  |
| `tolerations`  | Specifies the tolerations to add to the Spark history server pods | `[]`  |
| `affinity`     | Specifies the affinity to add to the Spark history server pods    | `{}`  |


### Spark history server configuration

| Name                    | Description                               | Value                        |
| ----------------------- | ----------------------------------------- | ---------------------------- |
| `historyServer.logPath` | Specifies the path to the Spark log files | `s3a://my-bucket/spark-logs` |


