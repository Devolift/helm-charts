# generic-cron

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

Devolift cronjob generic helm chart

**Homepage:** <https://devolift.com/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Matthieu Delmaire | <matthieu.delmaire@devolift.com> |  |

## Source Code

* <https://github.com/Devolift/helm-charts/>

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
| cronjob.annotations | object | `{}` | Annotations added to the cronjob resource |
| cronjob.concurrencyPolicy | string | `"Allow"` | Cronjob concurrency policy |
| cronjob.failedJobsHistoryLimit | int | `1` | Cronjob failedJobsHistoryLimit |
| cronjob.labels | object | `{}` | Labels added to the cronjob resource |
| cronjob.restartPolicy | string | `"OnFailure"` | Cronjob restart policy |
| cronjob.schedule | string | `"*/2 * * * *"` | Cronjob schedule |
| cronjob.successfulJobsHistoryLimit | int | `3` | Cronjob successfulJobsHistoryLimit |
| extraEnvVars | list | `[]` | Array with extra environment variables to add in pods |
| extraEnvVarsConfigMap | string | `""` | Optionally specify existing configMap which will be added to our pods |
| extraEnvVarsSecret | string | `""` | Optionally specify existing secret which will be added to our pods |
| extraVolumeMounts | list | `[]` | Optionally specify extra list of additional volumeMounts |
| extraVolumes | list | `[]` | Optionally specify extra list of additional volumes |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.pullSecrets | list | `[]` | Docker registry secret names as an array |
| image.registry | string | `nil` | Docker image registry |
| image.repository | string | `"generic-service"` | Docker repository |
| image.tag | string | `"0.0.1"` | Docker image tag |
| initContainers | list | `[]` | Add additional init containers |
| livenessProbe.enabled | bool | `false` | Enable livenessProbe on containers |
| livenessProbe.failureThreshold | int | `5` | Failure threshold for livenessProbe |
| livenessProbe.initialDelaySeconds | int | `300` | Initial delay seconds for livenessProbe |
| livenessProbe.path | string | `"/health"` | Path for livenessProbe |
| livenessProbe.periodSeconds | int | `10` | Period seconds for livenessProbe |
| livenessProbe.port | int | `80` | Port for livenessProbe |
| livenessProbe.successThreshold | int | `1` | Success threshold for livenessProbe |
| livenessProbe.timeoutSeconds | int | `3` | Timeout seconds for livenessProbe |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podAnnotations | object | `{}` | Add extra annotations to the pods |
| podLabels | object | `{}` | Add extra labels to the pods |
| readinessProbe.enabled | bool | `false` | Enable readinessProbe on containers |
| readinessProbe.failureThreshold | int | `5` | Failure threshold for readinessProbe |
| readinessProbe.initialDelaySeconds | int | `300` | Initial delay seconds for readinessProbe |
| readinessProbe.path | string | `"/health"` | Path for readinessProbe |
| readinessProbe.periodSeconds | int | `5` | Period seconds for readinessProbe |
| readinessProbe.port | int | `80` | Port for readinessProbe |
| readinessProbe.successThreshold | int | `1` | Success threshold for readinessProbe |
| readinessProbe.timeoutSeconds | int | `2` | Timeout seconds for readinessProbe |
| resources.limits.cpu | string | `"200m"` | The cpu resources limits for the containers |
| resources.limits.memory | string | `"256Mi"` | The memory resources limits for the containers |
| resources.requests.cpu | string | `"100m"` | The cpu resources requests for the containers |
| resources.requests.memory | string | `"128Mi"` | The memory resources requests for the containers |
| schedulerName | string | `nil` | Use an alternate scheduler |
| securityContext.enabled | bool | `false` |  |
| securityContext.fsGroup | string | `nil` |  |
| securityContext.runAsGroup | string | `nil` |  |
| securityContext.runAsUser | string | `nil` |  |
| serviceAccountName | string | `nil` | The name of the ServiceAccount to use (have to already exists) |
| sidecars | list | `[]` | Add additional sidecar containers |
| startupProbe.enabled | bool | `false` | Enable startupProbe on containers |
| startupProbe.failureThreshold | int | `5` | Failure threshold for startupProbe |
| startupProbe.initialDelaySeconds | int | `300` | Initial delay seconds for startupProbe |
| startupProbe.path | string | `"/health"` | Path for startupProbe |
| startupProbe.periodSeconds | int | `5` | Period seconds for startupProbe |
| startupProbe.port | int | `80` | Port for startupProbe |
| startupProbe.successThreshold | int | `1` | Success threshold for startupProbe |
| startupProbe.timeoutSeconds | int | `2` | Timeout seconds for startupProbe |
| tolerations | list | `[]` | Tolerations for pods assignment |
| topologySpreadConstraints | object | `{}` | Topology Spread Constraints for pod assignment spread across your cluster |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
