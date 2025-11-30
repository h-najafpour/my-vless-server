FROM alpine:latest

RUN apk update && apk add --no-cache wget
RUN wget https://github.com/v2fly/v2ray-core/releases/download/v4.45.2/v2ray-linux-64.zip
RUN unzip v2ray-linux-64.zip -d /usr/bin/v2ray
RUN chmod +x /usr/bin/v2ray/v2ray

COPY config.json /etc/v2ray/config.json

CMD ["/usr/bin/v2ray/v2ray", "run", "-config", "/etc/v2ray/config.json"]
