{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "infinispan.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "infinispan.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create common labels.
*/}}
{{- define "infinispan.commonLabels" -}}
helm.sh/chart: {{ include "infinispan.chart" . }}
{{ include "infinispan.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}

{{- end -}}

{{/*
Create selector labels.
*/}}
{{- define "infinispan.selectorLabels" -}}
app.kubernetes.io/name: {{ include "infinispan.name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}
