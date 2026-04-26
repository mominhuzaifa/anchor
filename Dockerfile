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
    git \
    openssh-client \
    ca-certificates \
    # Network & Path Diagnostics
    bind-tools \
    iproute2 \
    tcpdump \
    netcat-openbsd \
    # Process Monitoring
    htop \
    # Cloud-Native Tools
    kubectl \
    aws-cli && \
    rm -rf /var/cache/apk/*
    
# Security: Run as non-root user
RUN addgroup -S anchor && adduser -S anchor -G anchor
USER anchor

# Set the prompt to show user@hostname:path$
ENV PS1="\u@\h:\w\$ "

CMD ["/bin/bash"]