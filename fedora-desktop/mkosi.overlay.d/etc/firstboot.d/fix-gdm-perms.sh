#!/bin/bash
#
set -euo pipefail

if getent passwd gdm >/dev/null; then
    # Ensure the directory exists and has the right owner
    mkdir -p /var/lib/gdm/.config
    chown -R gdm:gdm /var/lib/gdm
    chmod 700 /var/lib/gdm
fi
