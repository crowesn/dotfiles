#!/bin/bash
cat >/etc/hosts <<EOL

##
# Host Database
#
# localhost is used to configure the loopback interface
# when the system is booting.  Do not change this entry.
##
127.0.0.1 localhost
255.255.255.255 broadcasthost
::1             localhost
##
#
# block for distraction free work!
#
##
127.0.0.1 www.facebook.com
127.0.0.1 facebook.com
127.0.0.1 www.reddit.com
127.0.0.1 reddit.com
127.0.0.1 www.nytimes.com
127.0.0.1 nytimes.com
127.0.0.1 cincinnati.com
127.0.0.1 www.cincinnati.com
127.0.0.1 www.twitter.com
127.0.0.1 twitter.com
EOL
