#!/bin/bash

source /usr/local/rvm/scripts/rvm
/etc/init.d/postgresql start
/opt/msf/msfupdate --git-branch master
msfrpcd -P $PASSWORD -f -a 0.0.0.0 -U msf &
# /bin/bash -c "cd /tmp/data && bash"
