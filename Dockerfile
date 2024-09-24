FROM nginxproxy/acme-companion:2.5.0

LABEL maintainer "Dschinghis Kahn"

HEALTHCHECK CMD pidof letsencrypt_service || exit 1
