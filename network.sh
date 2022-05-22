#! /usr/bin/bash

ifconfig | grep "broadcast"  | cut -d " " -f 10 | cut -d "." -f 1,2,3 | uniq > allnetworks.txt
ifconfig | grep "broadcast"  | cut -d " " -f 10 > ipaddress.txt
IPADDRESS1=$(cat ipaddress.txt | head -n 1 )
IPADDRESS2=$(cat ipaddress.txt | head -n 2 | tail -n 1 )
IPADDRESS3=$(cat ipaddress.txt | head -n 3 | tail -n 1 )
IPADDRESS4=$(cat ipaddress.txt | head -n 4 | tail -n 1 )
IPADDRESS5=$(cat ipaddress.txt | head -n 5 | tail -n 1 )

IPNETWORK1=$(cat allnetworks.txt | head -n 1 )
IPNETWORK2=$(cat allnetworks.txt | head -n 2 | tail -n 1 )
IPNETWORK3=$(cat allnetworks.txt | head -n 3 | tail -n 1 )
IPNETWORK4=$(cat allnetworks.txt | head -n 4 | tail -n 1 )
IPNETWORK5=$(cat allnetworks.txt | head -n 5 | tail -n 1 )

echo "YOUR IP ADRESS: $IPADDRESS1, $IPADDRESS2, $IPADDRESS3, $IPADDRESS4, $IPADDRESS5"
echo "YOUR IP NETWORKS: $IPNETWORK1, $IPNETWORK2, $IPNETWORK3, $IPNETWORK4, $IPNETWORK5"

#REMOVE FILES
rm allnetworks.txt & rm ipaddress.txt

#NMAP INSTALLATION
sudo apt-get install nmap -y

for ip in {1..254}
do
    ping -c 1 $IPNETWORK1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $IPNETWORK1.txt &
done
sudo nmap -sS -iL $IPNETWORK1.txt  > $IPNETWORK1.txt.sorted.nmap

for ip in {1..254}
do
    ping -c 1 $IPNETWORK2.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $IPNETWORK2.txt &
done
sudo nmap -sS -iL $IPNETWORK2.txt  > $IPNETWORK2.txt.sorted.nmap


for ip in {1..254}
do
    ping -c 1 $IPNETWORK3.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $IPNETWORK3.txt &
done
sudo nmap -sS -iL $IPNETWORK3.txt  > $IPNETWORK3.txt.sorted.nmap


for ip in {1..254}
do
    ping -c 1 $IPNETWORK4.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $IPNETWORK4.txt &
done
sudo nmap -sS -iL $IPNETWORK4.txt  > $IPNETWORK4.txt.sorted.nmap

for ip in {1..254}
do
    ping -c 1 $IPNETWORK5.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $IPNETWORK5.txt &
done
sudo nmap -sS -iL $IPNETWORK5.txt  > $IPNETWORK5.txt.sorted.nmap


#REMOVE ARTIFACTS
rm $IPNETWORK1.txt & rm $IPNETWORK2.txt & rm $IPNETWORK3.txt & rm $IPNETWORK4.txt & rm $IPNETWORK5.txt

echo "Check sorted files"
ls -lh