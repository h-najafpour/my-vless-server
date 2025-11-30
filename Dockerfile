FROM alpine:latest

RUN apk update && apk add --no-cache nginx
COPY index.html /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
