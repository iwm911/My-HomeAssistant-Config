#####SH FILE : ssd_usage.sh
#!/bin/bash
sshpass -p xxxxxx ssh -o stricthostkeychecking=no root@192.xxx.x.xxx 'df | grep '/mnt/cache' | grep -o '[0-9]*%' | grep -o '[0-9]*';'