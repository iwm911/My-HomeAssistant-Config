#!/bin/bash
#this script backup HomeAssitant Config dir (without DB and backup folder) and save in local folder+in server folder 
cd /config/backup/hass && zip -r "Home-Assistant-Backup-$(date +"%Y-%m-%d").zip" /config/ -x "/*tts/*" -x "*.db" -x "*.db-shm" -x "*.db-wal" -x  /backup/hass/**\*

scp -r /config/backup/hass user@192.168.1.199:/mnt/user/Backup/home-assistant/