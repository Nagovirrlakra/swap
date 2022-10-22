#!/bin/bash

read comm 

echo "Loading..." 
sleep 1
if [[ $comm == "-h" ]]; then 

echo "executing help...."
sleep 1

echo "
Swap Command created with no purpose by Nagov Irrlakra
List Of Commands:
-h : Show This Help
-c : Creating The Swap File By Its Size ( swap -c <sizeof> )
-d : Delete a swapfile"

if [[ $comm == "-c" ]]; then

read out

(sudo fallocate -l $out /swapfile)

(sudo chmod 600 /swapfile)

(sudo mkswap /swapfile)

(sudo swapon /swapfile)

(echo "$SWAP_PATH   none    swap    sw    0   0" | sudo tee /etc/fstab -a # Add to fstab)

while true

echo "Swapfile has been Created and Actvated"

[[ if $comm == "-d" ]]; then

$(sudo swapoff -a)

$(sudo swapon -a)

fi 
exit


