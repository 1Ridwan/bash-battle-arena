#!/bin/bash

: '
Mission: Write a script that accepts a filename as an argument and 
 prints the number of lines in that file. If no filename is provided, 
 display a message saying 'No file provided'.
'


print_lines() {
    if [[ -f "./$1" ]];
    then
        awk 'END { print NR }' ./$1
    else    
        echo "File not found: ./$1"
    fi
}

print_lines "hero.txt"