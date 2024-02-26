{{/*
Expand the name of the chart.
*/}}
{{- define "eduhelx-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "eduhelx-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "eduhelx-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "eduhelx-chart.labels" -}}
helm.sh/chart: {{ include "eduhelx-chart.chart" . }}
{{ include "eduhelx-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "eduhelx-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "eduhelx-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "eduhelx-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "eduhelx-chart.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

# {{/*
# Get the student-helx postgresql existingSecret name
# We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
# If release name contains chart name it will be used as a full name.
# */}}
# {{- define "appstore.fullname" -}}
# {{- if .Values.fullnameOverride -}}
# {{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
# {{- else -}}
# {{- $name := default .Chart.Name .Values.nameOverride -}}
# {{- if contains $name .Release.Name -}}
# {{- .Release.Name | trunc 63 | trimSuffix "-" -}}
# {{- else -}}
# {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
# {{- end -}}
# {{- end -}}
# {{- end -}}