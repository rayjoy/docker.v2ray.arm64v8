FROM arm64v8/alpine

EXPOSE 1080
RUN apk --update add --no-cache curl bash
RUN curl -L -o /tmp/go.sh https://install.direct/go.sh
RUN chmod +x /tmp/go.sh
RUN /tmp/go.sh

CMD ["/usr/bin/v2ray/v2ray", "-config=/etc/v2ray/config.json"]
