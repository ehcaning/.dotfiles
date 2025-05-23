#!/usr/bin/env /Users/ehcan/.pyenv/shims/python

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Synology Downloader
# @raycast.mode fullOutput
# @raycast.packageName My Scripts
#
# Optional parameters:
# @raycast.icon https://www.synology.com/img/products/detail/RT1900ac/DownloadStation.png
# @raycast.needsConfirmation false
#
# Documentation:
# @raycast.description Write a nice and descriptive summary about your script command here
# @raycast.argument1 { "type": "text", "placeholder": "File url" }

import sys
import os
from download_station_api import download_station_api
from dotenv import load_dotenv


load_dotenv(dotenv_path="synology-downloader.env")
file_url = sys.argv[1]

d = download_station_api.DownloadStationAPI(
    user_name=os.getenv("USERNAME"),
    password=os.getenv("PASSWORD"),
    nas_ip=os.getenv("NAS_IP"),
)
d.add_download_task(
    url=file_url,
    destination="media-server/Downloads",
)
