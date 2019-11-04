#!/bin/bash
# WARNING: To Use below tool you need to install youtube-dl firsthand
#          sudo apt-get install youtube-dl
#
# Where To Find Downloaded Playlist:
#          It will save under it's playlist name in your home directory.
#
# 
# Credits goes to Sayed Muhammad Naghsh Husayni
# Contact me via :
#         Telegram :> @SM_NHosseini
#         Instagram :> @full_stack_developer
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the  GNU  Affero General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option) any
# later version.


read -p "Enter Your YouTube Playlist Id like "PL4cUxeGkcC9jBcybHMTIia56aV21o2cZ8" :> "  ID
echo "Starting to download your playlist \n\n"

youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $ID
