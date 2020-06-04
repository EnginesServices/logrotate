#!/bin/sh

. /home/engines/functions/checks.sh\r\n \r\nrequired_values=\"log_file_path parent_engine\"\r\ncheck_required_values\r\n\r\nrm /home/logrotate/saved/$parent_engine/$service_handle.entry\r\n\r\nsudo -n /home/engines/scripts/services/sudo/remove_service.sh $parent_engine
