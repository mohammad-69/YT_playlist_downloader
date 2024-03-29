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


read -p "Choose what type of media you want to downlaod from youtube, audio or video ? "  Media_Type

if [ $Media_Type = "audio" ]; then
        echo "Do you want to download a single video file or playlist? \n\t"
            read -p "Enter 'single' or 'list' " YT_AUD_TYPE
        if [ $YT_AUD_TYPE = "single" ];then
            read -p "Enter Youtube address of your media like: 'https://www.youtube.com/watch?v=jwD4AEVBL6Q' "  YT_AUD_SINGLE_ADDRS
            echo "Starting to download your single audio file: \n\n"
            youtube-dl -o '%(alt_title)s.%(ext)s' -x --audio-format mp3 $YT_AUD_SINGLE_ADDRS
          else
            echo "Enter Youtube address of your media playlist id for example: \n  Original url: 'https://www.youtube.com/watch?v=IrclKk_nWHI&list=PLXmMXHVSvS-DvYEVy6JQUAjannaohHXRV' \n "
            read -p "  Playlist id is: 'PLXmMXHVSvS-DvYEVy6JQUAjannaohHXRV' " YT_AUD_LIST_ADDRS
            echo "Starting to download your playlist: \n\n"
            youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' -x --audio-format mp3 $YT_AUD_LIST_ADDRS
    fi
else
    echo "Do you want to download a single video file or playlist? \n\t"
    read -p "Enter 'single' or 'list' " YT_VID_TYPE
    if [ $YT_VID_TYPE = "single" ];then
        read -p "Enter Youtube address of your media like: 'https://www.youtube.com/watch?v=jwD4AEVBL6Q' "  YT_VID_SINGLE_ADDRS
        echo "Starting to download your single video file: \n\n"
        youtube-dl -o '%(alt_title)s.%(ext)s' $YT_VID_SINGLE_ADDRS
    else
            echo "Enter Youtube address of your media playlist id for example: \n  Original url: 'https://www.youtube.com/watch?v=IrclKk_nWHI&list=PLXmMXHVSvS-DvYEVy6JQUAjannaohHXRV' \n "
            read -p "  Playlist id is: 'PLXmMXHVSvS-DvYEVy6JQUAjannaohHXRV' " YT_VID_LIST_ADDRS
            echo "Starting to download your playlist: \n\n"
            youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $YT_VID_LIST_ADDRS
    fi
fi

