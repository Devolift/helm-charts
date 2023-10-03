{{/*
Return the proper image name
*/}}
{{- define "cronGeneric.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "cronGeneric.imagePullSecrets" -}}
{{ include "common.images.pullSecrets" (dict "images" (list .Values.image) "global" .Values.global) }}
{{- end -}}


{{/*
    Define api service configMap name
*/}}
{{- define "configmap.name" -}}
{{- printf "%s-config" .Release.Name  -}}
{{- end -}}
