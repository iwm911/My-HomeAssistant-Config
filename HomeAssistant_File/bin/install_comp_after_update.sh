#!/bin/bash
#this script will install all the regular staff are needed after Update of docker 

sshpass -p pass ssh -o stricthostkeychecking=no user@192.168.1.199 '
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>CLOUD9IDE apt-get update <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec cloud9ide apt-get update;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>CLOUD9IDE apt-get install -y sshpass <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec cloud9ide apt-get install -y sshpass;

docker exec home-assistant apt-get update;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>apt-get update && install -y hddtemp sshpass zip netcat <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant apt-get install -y hddtemp sshpass zip netcat;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdi <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdi;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdc <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdc;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdg <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdg;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdf <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdf;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sde <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sde;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdj <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdj;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdh <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdh;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>hddtemp -n /dev/sdb <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker exec home-assistant hddtemp -n /dev/sdb;
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>restart home-assistant <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ";
docker restart home-assistant;
'