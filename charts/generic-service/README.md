# generic-service

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

Devolift generic service helm chart

**Homepage:** <https://devolift.com/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Matthieu Delmaire | <matthieu.delmaire@devolift.com> |  |

## Source Code

* <https://github.com/devolift/helm-charts/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/bitnamicharts | common | 2.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| args | list | `[]` | Override default container args |
| command | list | `[]` | Override default container command |
| configmap.annotations | object | `{}` | Annotations added to the configmap resource |
| configmap.data | object | `{}` | Define data that will be into the configmap resource |
| configmap.labels | object | `{}` | Labels added to the configmap resource |
| deployment.annotations | object | `{}` | Annotations added to the deployment resources |
| deployment.labels | object | `{}` | Labels added to the deployment resources |
| deployment.strategy | string | `nil` | Deployment strategy |
| extraEnvVars | list | `[]` | Array with extra environment variables to add in pods |
| extraEnvVarsConfigMap | string | `""` | Optionally specify existing configMap which will be added to our pods |
| extraEnvVarsSecret | string | `""` | Optionally specify existing secret which will be added to our pods |
| extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts |
| extraVolumes | list | `[]` | Optionally specify extra list of additional volumes |
| hostAliases | list | `[]` | Pods host aliases |
| hpa.annotations | object | `{}` | Annotation added to the horizontal pod autoscaler resource |
| hpa.cpu.averageUtilization | int | `80` | Define the CPU target to trigger the scaling actions (utilization percentage) |
| hpa.enabled | bool | `false` | Whether enable horizontal pod autoscaler |
| hpa.labels | object | `{}` | Labels added to the horizontal pod autoscaler resource |
| hpa.maxReplicas | int | `5` | Configure a maximum amount of pods |
| hpa.memory.averageUtilization | int | `100` | Define the memory target to trigger the scaling actions (utilization percentage) |
| hpa.minReplicas | int | `1` | Configure a minimum amount of pods |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.pullSecrets | list | `[]` | Docker registry secret names as an array |
| image.registry | string | `nil` | Docker image registry |
| image.repository | string | `"generic-service"` | Docker repository |
| image.tag | string | `"0.0.1"` | Docker image tag |
| ingress.annotations | object | `{"kubernetes.io/ingress.class":"nginx"}` | Annotations added to the ingress resources |
| ingress.enabled | bool | `true` | Create or not ingress resource |
| ingress.extraHosts | list | `[]` | An array with additional hostname(s) to be covered with the ingress resource |
| ingress.extraPaths | list | `[]` | An array with additional arbitrary paths that may need to be added to the ingress under the main host |
| ingress.extraTls | list | `[]` | TLS configuration for additional hostname(s) to be covered with this ingress resource |
| ingress.hostname | string | `"generic-service.localhost"` | Hostname of the ingress resource |
| ingress.labels | object | `{}` | Labels added to the ingress resource |
| ingress.path | string | `"/"` | Path defined into the ingress resource |
| ingress.pathType | string | `"ImplementationSpecific"` | PathType defined into the ingress resource |
| ingress.tls | bool | `true` | Activate or not the tls part of the ingress resource |
| ingress.tlsSecretName | string | `nil` | Specify an existing tls secret |
| initContainers | list | `[]` | Add additional init containers |
| livenessProbe.enabled | bool | `false` | Enable livenessProbe on containers |
| livenessProbe.failureThreshold | int | `5` | Failure threshold for livenessProbe |
| livenessProbe.initialDelaySeconds | int | `300` | Initial delay seconds for livenessProbe |
| livenessProbe.path | string | `"/health"` | Path for livenessProbe |
| livenessProbe.periodSeconds | int | `10` | Period seconds for livenessProbe |
| livenessProbe.port | string | `nil` | Port for livenessProbe |
| livenessProbe.successThreshold | int | `1` | Success threshold for livenessProbe |
| livenessProbe.timeoutSeconds | int | `3` | Timeout seconds for livenessProbe |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Add extra annotations to the pods |
| podLabels | object | `{}` | Add extra labels to the pods |
| priorityClassName | string | `nil` | Priority Class Name |
| readinessProbe.enabled | bool | `false` | Enable readinessProbe on containers |
| readinessProbe.failureThreshold | int | `5` | Failure threshold for readinessProbe |
| readinessProbe.initialDelaySeconds | int | `300` | Initial delay seconds for readinessProbe |
| readinessProbe.path | string | `"/health"` | Path for readinessProbe |
| readinessProbe.periodSeconds | int | `5` | Period seconds for readinessProbe |
| readinessProbe.port | string | `nil` | Port for readinessProbe |
| readinessProbe.successThreshold | int | `1` | Success threshold for readinessProbe |
| readinessProbe.timeoutSeconds | int | `2` | Timeout seconds for readinessProbe |
| replicaCount | int | `1` | Number of desired pods, only applicable if hpa.enabled is false |
| resources.limits.cpu | string | `"200m"` | The cpu resources limits for the containers |
| resources.limits.memory | string | `"256Mi"` | The memory resources limits for the containers |
| resources.requests.cpu | string | `"100m"` | The cpu resources requests for the containers |
| resources.requests.memory | string | `"128Mi"` | The memory resources requests for the containers |
| schedulerName | string | `nil` | Use an alternate scheduler |
| securityContext.enabled | bool | `false` |  |
| securityContext.fsGroup | string | `nil` |  |
| securityContext.runAsGroup | string | `nil` |  |
| securityContext.runAsUser | string | `nil` |  |
| service.annotations | object | `{}` | Annotations added to the service resources |
| service.labels | object | `{}` | Labels added to the service resources |
| service.port | int | `80` | Port that will be exposed on the service |
| service.targetPort | int | `8080` | TargetPort of your docker image |
| service.type | string | `"ClusterIP"` | Type of the kubernetes service |
| serviceAccountName | string | `nil` | The name of the ServiceAccount to use (have to already exists) |
| sidecars | list | `[]` | Add additional sidecar containers |
| startupProbe.enabled | bool | `false` | Enable startupProbe on containers |
| startupProbe.failureThreshold | int | `5` | Failure threshold for startupProbe |
| startupProbe.initialDelaySeconds | int | `300` | Initial delay seconds for startupProbe |
| startupProbe.path | string | `"/health"` | Path for startupProbe |
| startupProbe.periodSeconds | int | `5` | Period seconds for startupProbe |
| startupProbe.port | string | `nil` | Port for startupProbe |
| startupProbe.successThreshold | int | `1` | Success threshold for startupProbe |
| startupProbe.timeoutSeconds | int | `2` | Timeout seconds for startupProbe |
| tolerations | list | `[]` | Tolerations for pods assignment |
| topologySpreadConstraints | object | `{}` | Topology Spread Constraints for pod assignment spread across your cluster |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
