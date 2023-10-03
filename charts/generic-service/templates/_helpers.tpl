{{/*
Return the proper bffBuyback image name
*/}}
{{- define "genericService.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "genericService.imagePullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image) "global" .Values.global) }}
{{- end -}}


{{/*
    Define api service configMap name
*/}}
{{- define "configmap.name" -}}
{{- printf "%s-config" .Release.Name  -}}
{{- end -}}
