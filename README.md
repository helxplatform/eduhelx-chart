# eduhelx-chart

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| @gitea-charts | gitea | ^0.0.0 |
| @helx-charts | eduhelx-grader-api | ^1.0.1 |
| @helx-charts | gitea-assist | ^1.0.0 |
| @helx-charts | student-helx(helx) | ^4.2.0 |
| @helx-charts | professor-helx(helx) | ^4.2.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| eduhelx-grader-api.config.data | string | `nil` |  |
| eduhelx-grader-api.enabled | bool | `true` | enable/disable deployment of the EduHeLx Grader API |
| eduhelx-grader-api.securityContext.runAsNonRoot | bool | `true` |  |
| eduhelx-grader-api.securityContext.runAsUser | string | `"<change-me>"` |  |
| fullnameOverride | string | `""` |  |
| gitea-assist.enabled | bool | `true` | enable/disable deployment of the Gitea Assist service |
| gitea.enabled | bool | `true` | enable/disable deployment of the Gitea service |
| nameOverride | string | `""` |  |
| professor-helx.ambassador.image.repository | string | `"containers.renci.org/helxplatform/ambassador"` |  |
| professor-helx.ambassador.image.tag | string | `"latest"` |  |
| professor-helx.ambassador.securityContext | string | `nil` |  |
| professor-helx.appstore.ACCOUNT_DEFAULT_HTTP_PROTOCOL | string | `"https"` |  |
| professor-helx.appstore.django.ALLOW_SAML_LOGIN | bool | `true` |  |
| professor-helx.appstore.django.APPSTORE_DJANGO_PASSWORD | string | `"<change-me>"` |  |
| professor-helx.appstore.django.AUTHORIZED_USERS | string | `"tcheek@renci.org\npjl@unc.edu\npjl@renci.org\nbennettc@renci.org\ncnbiii@email.unc.edu\nhinashah@renci.org\nisma@email.unc.edu\njeffw@renci.org\njseals@renci.org\nhpatel@renci.org\n"` |  |
| professor-helx.appstore.django.DEV_PHASE | string | `"prod"` |  |
| professor-helx.appstore.django.EMAIL_HOST_PASSWORD | string | `"<change-me>"` |  |
| professor-helx.appstore.django.EMAIL_HOST_USER | string | `"appstore@renci.org"` |  |
| professor-helx.appstore.djangoSettings | string | `"eduhelx-dev"` |  |
| professor-helx.appstore.fetcherImage.repository | string | `"containers.renci.org/helxplatform/url-fetch"` |  |
| professor-helx.appstore.gitea.enabled | bool | `true` |  |
| professor-helx.appstore.gitea.host | string | `"<change-me>"` |  |
| professor-helx.appstore.image.tag | string | `"v3.3.0"` |  |
| professor-helx.appstore.imagePostgresql.repository | string | `"containers.renci.org/helxplatform/third-party/postgres"` |  |
| professor-helx.appstore.imagePostgresql.tag | string | `"latest"` |  |
| professor-helx.appstore.podSecurityContext | object | `{"allowPrivilegeEscalation":false,"runAsGroup":"<change-me>","runAsNonRoot":true,"runAsUser":"<change-me>"}` | This security context is used for the appstore pod, not pods created by appstore. Tycho manages  the pods created by appstore. |
| professor-helx.appstore.postgresql.image.registry | string | `"containers.renci.org"` |  |
| professor-helx.appstore.postgresql.image.repository | string | `"helxplatform/third-party/postgres"` |  |
| professor-helx.appstore.postgresql.image.tag | string | `"latest"` |  |
| professor-helx.appstore.postgresql.primary.persistence.size | string | `"<change-me>"` | Change this to the size of the professornfs PVC. |
| professor-helx.appstore.postgresql.securityContext.enabled | bool | `true` |  |
| professor-helx.appstore.postgresql.securityContext.runAsUser | string | `"<change-me>"` |  |
| professor-helx.appstore.resources.limits.cpu | string | `nil` |  |
| professor-helx.appstore.resources.limits.memory | string | `"1024Mi"` |  |
| professor-helx.appstore.resources.requests.cpu | int | `1` |  |
| professor-helx.appstore.resources.requests.memory | string | `"1024Mi"` |  |
| professor-helx.appstore.saml.ASSERTION_URL | string | `"https://<change-me>"` |  |
| professor-helx.appstore.saml.AUTHORITY_URL | string | `"https://sso.unc.edu/metadata/unc"` |  |
| professor-helx.appstore.saml.ENTITY_ID | string | `"https://<change-me>/saml2_auth/acs/"` |  |
| professor-helx.appstore.saml.cache.FETCH_INTERVAL | int | `3600000` |  |
| professor-helx.appstore.saml.cache.enabled | bool | `true` |  |
| professor-helx.appstore.saml.cache.storageSize | string | `"50M"` |  |
| professor-helx.enabled | bool | `true` | enable/disable deployment of the professor deployment of HeLx  |
| professor-helx.global.stdnfsPvc | string | `"professornfs"` |  |
| student-helx.ambassador.image.repository | string | `"containers.renci.org/helxplatform/ambassador"` |  |
| student-helx.ambassador.image.tag | string | `"latest"` |  |
| student-helx.ambassador.securityContext | string | `nil` |  |
| student-helx.appstore.ACCOUNT_DEFAULT_HTTP_PROTOCOL | string | `"https"` |  |
| student-helx.appstore.django.ALLOW_SAML_LOGIN | bool | `true` |  |
| student-helx.appstore.django.APPSTORE_DJANGO_PASSWORD | string | `"<change-me>"` |  |
| student-helx.appstore.django.AUTHORIZED_USERS | string | `"tcheek@renci.org\npjl@unc.edu\npjl@renci.org\nbennettc@renci.org\ncnbiii@email.unc.edu\nhinashah@renci.org\nisma@email.unc.edu\njeffw@renci.org\njseals@renci.org\nhpatel@renci.org\n"` |  |
| student-helx.appstore.django.DEV_PHASE | string | `"prod"` |  |
| student-helx.appstore.django.EMAIL_HOST_PASSWORD | string | `"<change-me>"` |  |
| student-helx.appstore.django.EMAIL_HOST_USER | string | `"appstore@renci.org"` |  |
| student-helx.appstore.djangoSettings | string | `"eduhelx-dev"` |  |
| student-helx.appstore.fetcherImage.repository | string | `"containers.renci.org/helxplatform/url-fetch"` |  |
| student-helx.appstore.gitea.enabled | bool | `true` |  |
| student-helx.appstore.gitea.host | string | `"<change-me>"` |  |
| student-helx.appstore.image.tag | string | `"v3.3.0"` |  |
| student-helx.appstore.imagePostgresql.repository | string | `"containers.renci.org/helxplatform/third-party/postgres"` |  |
| student-helx.appstore.imagePostgresql.tag | string | `"latest"` |  |
| student-helx.appstore.podSecurityContext | object | `{"allowPrivilegeEscalation":false,"runAsGroup":"<change-me>","runAsNonRoot":true,"runAsUser":"<change-me>"}` | This security context is used for the appstore pod, not pods created by appstore. Tycho manages  the pods created by appstore. |
| student-helx.appstore.postgresql.image.registry | string | `"containers.renci.org"` |  |
| student-helx.appstore.postgresql.image.repository | string | `"helxplatform/third-party/postgres"` |  |
| student-helx.appstore.postgresql.image.tag | string | `"latest"` |  |
| student-helx.appstore.postgresql.primary.persistence.size | string | `"<change-me>"` | Change this to the size of the studentnfs PVC. |
| student-helx.appstore.postgresql.securityContext.enabled | bool | `true` |  |
| student-helx.appstore.postgresql.securityContext.runAsUser | string | `"<change-me>"` |  |
| student-helx.appstore.resources.limits.cpu | string | `nil` |  |
| student-helx.appstore.resources.limits.memory | string | `"1024Mi"` |  |
| student-helx.appstore.resources.requests.cpu | int | `1` |  |
| student-helx.appstore.resources.requests.memory | string | `"1024Mi"` |  |
| student-helx.appstore.saml.ASSERTION_URL | string | `"https://<change-me>"` |  |
| student-helx.appstore.saml.AUTHORITY_URL | string | `"https://sso.unc.edu/metadata/unc"` |  |
| student-helx.appstore.saml.ENTITY_ID | string | `"https://<change-me>/saml2_auth/acs/"` |  |
| student-helx.appstore.saml.cache.FETCH_INTERVAL | int | `3600000` |  |
| student-helx.appstore.saml.cache.enabled | bool | `true` |  |
| student-helx.appstore.saml.cache.storageSize | string | `"50M"` |  |
| student-helx.enabled | bool | `true` | enable/disable deployment of the student deployment of HeLx  |
| student-helx.global.stdnfsPvc | string | `"studentnfs"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
