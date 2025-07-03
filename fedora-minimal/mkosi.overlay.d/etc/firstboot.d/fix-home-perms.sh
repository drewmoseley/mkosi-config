#!/bin/bash
set -e

echo "[firstboot] Fixing ownership of /home/dmoseley" >&2
chown -R dmoseley:dmoseley /home/dmoseley
chmod 700 /home/dmoseley

# Cleanup (optional)
#systemctl disable fix-home-firstboot.service
