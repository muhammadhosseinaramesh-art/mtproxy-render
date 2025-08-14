FROM alexbers/mtprotoproxy

ENV MTSECRET="0123456789abcdef0123456789abcdef"
ENV MTPROXY_TAG="492b25d95be6fcfc9347a0dbcb67918a"
ENV MTPROXY_PORT=443

# اجرای MTProxy در foreground
CMD ["mtproto-proxy", "-u nobody", "-p ${MTPROXY_PORT}", "-H 443", "--aes-pwd", "/proxy-secret", "/proxy-multi.conf", "--allow-skip-dh=0"]
