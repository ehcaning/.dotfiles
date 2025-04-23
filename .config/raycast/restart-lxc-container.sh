#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template" from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Restart LXC Container
# @raycast.mode compact
# @raycast.packageName My Scripts
#
# Optional parameters:
# @raycast.icon https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/proxmox.png
# @raycast.argument1 { "type": "dropdown", "placeholder": "LXC Container", "data":[{"title": "Jellyfin", "value": "101"},{"title": "Docker", "value": "102"},{"title": "Traefik", "value": "107"},{"title": "Grafana", "value": "108"}] }

ssh prx-base "pct reboot $1"
