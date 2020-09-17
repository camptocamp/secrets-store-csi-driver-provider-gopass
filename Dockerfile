FROM alpine:3.10

ARG VERSION
ARG ARCH="amd64"
ARG OS="linux"

WORKDIR /bin

RUN apk add --no-cache bash

ADD ./install.sh /bin/install_gopass_provider.sh
COPY ./_output/secrets-store-csi-driver-provider-gopass_${OS}_${ARCH}_${VERSION} /bin/secrets-store-csi-driver-provider-gopass
RUN chmod a+x /bin/secrets-store-csi-driver-provider-gopass

ENTRYPOINT ["/bin/install_gopass_provider.sh"]

