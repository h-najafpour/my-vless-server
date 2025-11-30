FROM alpine:latest

RUN apk add --no-cache bash wget tar

RUN wget -O x-ui.tar.gz https://github.com/vaxilu/x-ui/releases/latest/download/x-ui-linux-amd64.tar.gz
RUN tar -xzf x-ui.tar.gz
RUN chmod +x x-ui/x-ui

WORKDIR /x-ui

EXPOSE 54321 8080

CMD ["./x-ui"]
