#! /bin/bash

mkdir -p /usr/local/zeek/logs/current

chmod +x /opt/pocketsoc-ng/bin/pull_misp.sh

chmod +x /opt/pocketsoc-ng/bin/notifier.sh

echo ${ZEEKHOST} > /opt/pocketsoc-ng/data/zeekhost

/usr/bin/supervisord -c /etc/supervisord.conf
