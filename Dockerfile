FROM alpine:latest

RUN apk update && apk add --no-cache bash wget tar

# ایجاد دایرکتوری و دانلود
WORKDIR /app
RUN wget -O x-ui.tar.gz https://github.com/vaxilu/x-ui/releases/latest/download/x-ui-linux-amd64.tar.gz
RUN tar -xzf x-ui.tar.gz

# رفتن به دایرکتوری x-ui و دادن دسترسی اجرا
WORKDIR /app/x-ui
RUN chmod +x x-ui
RUN ls -la  # برای اطمینان از وجود فایل

# پورت‌ها
EXPOSE 54321 8080 80 443

# اجرای سرویس
CMD ["/bin/bash", "-c", "pwd && ls -la && ./x-ui"]
