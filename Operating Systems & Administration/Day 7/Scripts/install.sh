#!/bin/bash

pkgs=("vim" "rename" "ncal" "net-tools")

echo "Updating package list !!!"
sudo apt-get update
if [ $? -ne 0 ]
then
	echo "Package list is not updated ???"
	exit
fi

echo "Installing packages from list !!!"
for pkg in ${pkgs[*]}
do
	echo "Installing package : $pkg"
	sudo apt-get install $pkg
	if [ $? -ne 0 ]
	then
		echo "$pkg is not installed"
	fi
done








