#!/bin/bash
#this script will install all the regular staff are needed after Update of docker 

sshpass -p password ssh -o stricthostkeychecking=no root@192.x.x.x '
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>CLOUD9IDE apt-get update <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec cloud9ide apt-get update;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>CLOUD9IDE apt-get install -y sshpass <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec cloud9ide apt-get install -y sshpass;

docker exec home-assistant apt-get update;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>apt-get update && install -y hddtemp sshpass zip netcat <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant apt-get install -y hddtemp sshpass zip netcat;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdc <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdc;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdg <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdg;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdf <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdf;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sde <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sde;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdd <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdd;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdh <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdh;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdb <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdb;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>restart home-assistant <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker restart home-assistant;
'