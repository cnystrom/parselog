#!/bin/sh
#
#   Make Web Log
#   C. C. Nystrom
#   10/9/96
#
#   Used in conjunction with ~/httpd/cgi-bin/weblog.pl and
#   ~/httpd/cfi_local/cfi/weblog.html to allow user to view contents
#   of access logs
#
#   Make this a cron job right before midnight every night:
#
#     55 23 * * * /usr/local/adm/scripts/mkweblog.sh
#

DIR=/d3/httpd/logs
LOG=access_log
MON=`date +%h`

grep $MON $DIR/$LOG | sed '/cfi.org/d' | sed '/206.77.107/d' | sed '/gif/d' | sed '/jpg/d' | sed '/jpeg/d' > $DIR/$MON



