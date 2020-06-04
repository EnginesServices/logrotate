#!/bin/sh

PID_FILE=/tmp/logrotate.pid\r\nexport PID_FILE\r\n. /home/engines/functions/trap.sh\r\n\r\nstartup_complete\r\n\r\nsleep 120\r\necho \"Log Rotated Started\"\r\ndate\r\n\r\n\r\n\r\n\r\nsudo -n /usr/sbin/logrotate -f /home/logrotate/logrotate.conf &\r\npid=$!\r\necho $pid >$PID_FILE\r\n\r\nwait  \r\nexit_code=$?\r\necho \"Log Rotated Completed\"\r\ndate\r\n\r\nshutdown_complete
