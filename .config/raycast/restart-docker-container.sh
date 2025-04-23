#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template" from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Restart Docker Container
# @raycast.mode compact
# @raycast.packageName My Scripts
#
# Optional parameters:
# @raycast.icon https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/97_Docker_logo_logos-512.png
# @raycast.argument1 { "type": "dropdown", "placeholder": "Docker Container", "data":[{"title":"n8n","value":"n8n"},{"title":"bazarr","value":"bazarr"},{"title":"litellm","value":"litellm"},{"title":"radarr","value":"radarr"},{"title":"readarr","value":"readarr"},{"title":"prowlarr","value":"prowlarr"},{"title":"open-webui","value":"open-webui"},{"title":"wallos","value":"wallos"},{"title":"sonarr","value":"sonarr"},{"title":"metube","value":"metube"},{"title":"lidarr","value":"lidarr"},{"title":"checkrr","value":"checkrr"},{"title":"portainer","value":"portainer"},{"title":"ariang","value":"ariang"},{"title":"syncthing","value":"syncthing"},{"title":"jellyseerr","value":"jellyseerr"},{"title":"audiobookshelf","value":"audiobookshelf"},{"title":"litellm-db","value":"litellm-db"},{"title":"watchtower","value":"watchtower"},{"title":"uptime-kuma","value":"uptime-kuma"},{"title":"homarr","value":"homarr"},{"title":"cadvisor","value":"cadvisor"}]}

docker --context docker-lxc restart $1
