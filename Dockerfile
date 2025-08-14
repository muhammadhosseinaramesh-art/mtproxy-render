# استفاده از Docker image عمومی MTProxy که foreground اجرا می‌شود
FROM g33k/mtproxy

# متغیرهای محیطی
ENV MTSECRET="0123456789abcdef0123456789abcdef"
ENV MTPROXY_TAG="492b25d95be6fcfc9347a0dbcb67918a"
ENV MTPROXY_PORT=443

# اجرای MTProxy
CMD ["mtproto-proxy", "--addr=0.0.0.0:443", "--secret=${MTSECRET}", "--tag=${MTPROXY_TAG}", "--allow-skip-dh=0"]
