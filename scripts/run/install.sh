#!/bin/sh

mkdir -p /home/engines/scripts/configurators/saved /home/logrotate/saved/ /home/logrotate/conf.d \r\n chown -R logrotate /home/engines/scripts/configurators/saved /home/logrotate\r\n chown root /home/logrotate/logrotate.conf\r\n chmod 640  /home/logrotate/logrotate.conf\r\n chmod 640  /home/logrotate/logrotate.conf /home/logrotate/conf.d/syslog_logs
