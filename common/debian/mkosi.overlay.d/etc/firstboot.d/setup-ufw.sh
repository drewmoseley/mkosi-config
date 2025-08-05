#!/bin/bash
#
set -euo pipefail

if command -v ufw >/dev/null 2>&1; then
    ufw enable
    ufw default deny incoming
    ufw default allow outgoing
    ufw allow SSH
fi

