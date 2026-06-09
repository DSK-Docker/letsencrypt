FROM nginxproxy/acme-companion:2.7.0

LABEL maintainer "Dschinghis Kahn"

HEALTHCHECK CMD pidof letsencrypt_service || exit 1
