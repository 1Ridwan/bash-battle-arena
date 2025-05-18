#!/bin/bash

mkdir -p Battlefield #Create Battlefield directory

# Create files inside Battlefield
touch ./Battlefield/knight.txt ./Battlefield/sorcerer.txt ./Battlefield/rougue.txt

# initialise check variable which is equal to "knight.txt" if it exists
check=$(ls ./Battlefield | grep "knight.txt" )

if [ "$check" == "knight.txt" ]
then
	mv ./Battlefield/knight.txt ./Archive # move knight.txt into archive
	ls ./Archive ./Battlefield # list contents of both directories
fi
