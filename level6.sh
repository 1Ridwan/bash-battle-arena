#!/bin/bash

: '
Mission: Write a script that accepts a filename as an argument and 
 prints the number of lines in that file. If no filename is provided, 
 display a message saying 'No file provided'.
'

if [ -z "$1" ];
then
    echo "No file provided"
    exit 1
fi

if [ ! -f "$1" ];
then
    echo "file not found"
    exit 1
fi

LINE_COUNT=$( wc -l < "$1" )
DATA_COUNT=$( wc -c < "$1" )
echo "The file $1 has"$LINE_COUNT" lines and"$DATA_COUNT" bytes of data."