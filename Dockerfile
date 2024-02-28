FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget curl bash

ADD phpv3.sh /phpv3.sh
RUN chmod +x /phpv3.sh

CMD /phpv3.sh
