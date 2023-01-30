FROM nginxproxy/acme-companion:2.2.4

LABEL maintainer "Dschinghis Kahn"

HEALTHCHECK CMD pidof letsencrypt_service || exit 1
