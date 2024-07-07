{{/*
Define the standardized name of this helm chart and its objects
*/}}
{{- define "name" -}}
{{- required "A valid Values.dashboard.name is required for dashboard!" .Values.dashboard.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "namespace" -}}
{{- required "A valid Values.dashboard.namespace is required for dashboard!" .Values.dashboard.namespace | trimSuffix "-" -}}
{{- end -}}

{{- define "labels" -}}
labels:
  app.kubernetes.io/instance: my-grafana
  app.kubernetes.io/name: grafana
{{- end -}}

{{- define "generateUID" -}}
{{- randAlphaNum 8 | lower -}}
{{- end -}}


{{- define "title" -}}
{{- required "A valid Values.dashboard.title is required for dashboard!" .Values.dashboard.title | trunc 63 | trimSuffix "-" -}}
{{- end -}}