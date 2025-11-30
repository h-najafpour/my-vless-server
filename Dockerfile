FROM alpine:latest

RUN apk add --no-cache bash wget tar

# دانلود و extract فایل
RUN wget -O x-ui.tar.gz https://github.com/vaxilu/x-ui/releases/latest/download/x-ui-linux-amd64.tar.gz
RUN tar -xzf x-ui.tar.gz
RUN ls -la  # برای debug

# تغییر به دایرکتوری x-ui
WORKDIR x-ui
RUN ls -la  # برای debug
RUN chmod +x x-ui

# نمایش فایل‌ها
RUN pwd
RUN ls -la

CMD ["./x-ui"]
