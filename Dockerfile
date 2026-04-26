FROM alpine:3.19

# Metadata
LABEL maintainer="Momin Huzaifa" \
      org.opencontainers.image.title="Anchor" \
      org.opencontainers.image.description="Stable, lightweight toolkit for DevOps and SRE"

# Install core utilities in a single layer
RUN apk update && \
    apk add --no-cache \
    bash \
    curl \
    jq \
    bind-tools \
    ca-certificates \
    git \
    openssh-client && \
    rm -rf /var/cache/apk/*

# Security: Run as non-root user
RUN addgroup -S anchor && adduser -S anchor -G anchor
USER anchor

CMD ["/bin/bash"]