# base-supervisor

Base image that hosts the general software to host another services. Includes these main tools:

> supervisor
> rsyslog
> logrotate
> cron
> ssmtp

## Getting Started

This image is intended as a base for other containers, where is useful to have some software already in place. Also some configuration is expected to be added for correct behavior.

### Supported tags and respective  `Dockerfile`  links

- [`latest`  (Dockerfile)](https://github.com/janskola/base-supervisor/blob/master/Dockerfile)

### Example usage

> TODO

#### Volumes

- `/var/log` - Log files provided by rsyslog

#### Useful File Locations

Configuration directories comes from Debian logic, so as you would expect, you can configure included software here:

- `/etc/supervisor/conf.d/` - Folder for placing configuration file for log files rotation
- `/etc/logrotate.d/` - Folder for placing configuration file for log files rotation

## Build

Image debian/stretch-slim is used as a base.

### Build status

[![Build Status](https://dev.azure.com/docker-jsk/public/_apis/build/status/base-supervisor)](https://dev.azure.com/docker-jsk/public/_build/latest?definitionId=1)

## Source repository

- [github.com/janskola/base-supervisor](https://github.com/janskola/base-supervisor)

## Authors

- [**Jan Škola**]((https://github.com/janskola)) - *Initial work*

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/janskola/base-supervisor/blob/master/LICENSE) file for details.