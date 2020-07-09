#!/bin/bash

dmidecode -t3|grep Manufacturer
dmidecode -t2|grep Manufacturer
dmidecode -t2|grep Product
dmidecode -t1|grep Manufacturer
dmidecode -t1|grep Product


ipmitool mc info|grep "IP Address Source"
ipmitool mc info|grep "IP Address"
ipmitool mc info|grep "Subnet Mask"
ipmitool mc info|grep "Default Gateway IP"

dmidecode -t1|grep Version
ipmitool mc info|grep "Firmware Revision"

echo "--------------------------------------------------------------------------------"
rpm -qa|grep release
lsb_release -a
#echo

echo "--------------------------------------------------------------------------------"
date 
timedatectl
echo "--------------------------------------------------------------------------------"

dmidecode -t processor|grep Version
#lscpu|grep name 
lscpu|grep Core
lscpu|grep core
lscpu|grep MHz
#echo
echo "--------------------------------------------------------------------------------"
dmidecode -t memory|grep Manufacturer
free -g
#echo
echo "--------------------------------------------------------------------------------"
cat /proc/scsi/scsi|grep Model
lsblk
#echo
echo "--------------------------------------------------------------------------------"
blkid
#echo
xfs_info /

echo "--------------------------------------------------------------------------------"
#ifconfig -a
echo "--------------------------------------------------------------------------------"
ip addr
echo "--------------------------------------------------------------------------------"

lspci -vv|grep Et
#echo

ls /opt/MayaDevice/
#echo

nvidia-smi -L
#echo
lspci|grep VGA

getenforce

history -c
