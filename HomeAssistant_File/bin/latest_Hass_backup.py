#!/bin/bash
find /config/backup/hass/ -type f -exec stat \{} --printf="%y\n" \; | sort -n -r | head -n 1 | grep -o '[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]'