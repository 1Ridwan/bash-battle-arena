#!/bin/bash

mkdir -p Backup

i=0
x=$( ls -l ./Arena | wc -l )

files=($(ls ./Arena))

for (( i=0; i<=${#files[@]}; i++ ))
do
	cp "./Arena/${files[i]}" ./Backup
done
