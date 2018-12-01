FROM debian:stretch-slim

MAINTAINER Jan Skola <jan@skolovi.eu>

# Environment settings
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm

# Install base software packages
RUN apt-get update && apt-get install --no-install-recommends -y \
    apt-transport-https \
    ca-certificates \
    cron \
    curl \
    dirmngr \
    gnupg2 \
    htop \
    logrotate \
    lsb-release \
    nano \
    rsyslog \
    ssmtp \
    supervisor \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Copy rootfs including base configuration files
COPY rootfs/ /

# Base data volume and logging volume
VOLUME ["/opt/data", "/var/log/supervisor"]

# Container starup command to run supervisor
CMD ["/usr/bin/supervisord", "--configuration=/etc/supervisor/supervisord.conf"]
