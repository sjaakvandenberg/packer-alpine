#!/bin/sh
set -e

apk upgrade -U --available

# Install Vagrant dependencies
apk add dnsmasq nfs-utils rsync python
# apk add nfs-utils rsync

exit 0