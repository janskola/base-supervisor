FROM debian:stretch-slim
LABEL maintainer="Jan Skola <jan@skolovi.eu>"

# Environment settings
ENV DEBIAN_FRONTEND noninteractive
ENV TERM dumb

# Install base software packages
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
        supervisor \
        rsyslog \
        cron \
        logrotate \
        ssmtp \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy rootfs including base configuration files
COPY rootfs/ /

# Base data volume and logging volume
VOLUME ["/var/log/supervisor"]

# Container starup command to run supervisor
CMD ["/usr/bin/supervisord", "--configuration=/etc/supervisor/supervisord.conf"]
