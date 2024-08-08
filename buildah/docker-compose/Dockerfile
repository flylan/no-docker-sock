FROM alpine:3.20

ENV TZ="Asia/Shanghai" \
    BUILDAH_FORMAT="docker"

RUN sed -i 's/https\?:\/\/dl-cdn.alpinelinux.org/https:\/\/mirrors.aliyun.com/g' /etc/apk/repositories; \
    apk add --no-cache bash bash-completion tzdata curl busybox-extras buildah fuse-overlayfs netavark iptables; \
    mkdir -p /var/lib/shared; \
    sed -i -e 's|^#mount_program|mount_program|g' -e '/additionalimage.*/a "/var/lib/shared",' /etc/containers/storage.conf; \
    ln -sfn /usr/bin/buildah /usr/bin/docker