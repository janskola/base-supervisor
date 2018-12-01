#!/bin/sh

# For most Docker users, "apt-get install" only happens during "docker build",
# where starting services doesn't work and often fails in humorous ways. This
# prevents those failures by stopping the services from attempting to start.

# default Docker images setting
#exit 101

# but we need to return 0, logrotate does not work without it
exit 0
