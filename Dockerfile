FROM container4armhf/armhf-alpine:latest-stable

MAINTAINER Dennis Eijpe

RUN apk --no-cache add nginx && \
    mkdir -p /run/nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
