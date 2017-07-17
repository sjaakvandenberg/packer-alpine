#!/bin/sh
set -e

# Clean up temporary files
rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

# Write zeroes to empty space on volume for better compression
dd if=/dev/zero of=/EMPTY bs=1M || true
rm -f /EMPTY

# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full
sync
sync
sync

exit 0