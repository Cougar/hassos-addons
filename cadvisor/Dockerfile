ARG BUILD_FROM
# hadolint ignore=DL3006
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base system
ARG \
  BUILD_ARCH \
  CADVISOR_VERSION="0.47.2"

# Copy root filesystem
COPY rootfs /

# hadolint ignore=DL3003,DL3018
RUN \
    apk add --no-cache --update tar \
    && ARCH="${BUILD_ARCH}" \
    && if [ "${BUILD_ARCH}" = "aarch64" ]; then ARCH="arm64"; fi \
    && curl -J -L -o /usr/local/bin/cadvisor \
       "https://github.com/google/cadvisor/releases/download/v${CADVISOR_VERSION}/cadvisor-v${CADVISOR_VERSION}-linux-${ARCH}" \
    && chmod a+x /usr/local/bin/cadvisor

# This add-on runs on the host pid namespace, making it impossible
# to use S6-Overlay. Therefore the init system is disabled at this point.
ENTRYPOINT []
CMD ["/run.sh"]
