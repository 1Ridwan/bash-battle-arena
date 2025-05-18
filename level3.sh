#!/bin/bash

# Write a script that checks if a file named hero.txt exists in the 
# Arena directory. If it does, print Hero found!; otherwise,
# print Hero missing!.

files=$(ls -l ./Arena | awk '{print $9}' | grep "hero.txt")
## there is probably a better way to do this haha

if [ "$files" == "hero.txt" ]
then
	echo "Hero found!"
else
	echo "Hero missing!"
fi