FROM nginxproxy/acme-companion:2.2.1

LABEL maintainer "Dschinghis Kahn"

RUN \
  apt-get update && \
  apt-get install -y procps && \
  rm -rf /var/lib/apt/lists/

HEALTHCHECK CMD pidof letsencrypt_service || exit 1
