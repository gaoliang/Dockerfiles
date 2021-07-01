FROM alpine:latest
LABEL maintainer "Gao Liang <gaoliangim@gmail.com>"

ARG FRP_VERSION=v0.37.0

COPY ./docker-entrypoint.sh /
RUN apk add --virtual .build-dependencies --no-cache openssl
RUN chmod +x /docker-entrypoint.sh \
  && mkdir -p /etc/frp \
  && cd /tmp \
  && wget -O frp.tar.gz "https://github.com/fatedier/frp/releases/download/${FRP_VERSION}/frp_${FRP_VERSION:1}_linux_amd64.tar.gz" \
  && tar -xzf frp.tar.gz \
  && mv ./frp_${FRP_VERSION:1}_linux_amd64/frpc /usr/local/bin \
  && mv ./frp_${FRP_VERSION:1}_linux_amd64/frps /usr/local/bin \
  && rm -rf /tmp/*

ENTRYPOINT ["/docker-entrypoint.sh"]
