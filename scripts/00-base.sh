#!/bin/sh
set -e

. /etc/os-release

cat << "EOF" > /etc/motd
$NAME $VERSION_ID
EOF

exit 0