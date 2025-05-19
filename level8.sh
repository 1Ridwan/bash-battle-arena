#!/bin/bash

# Mission: Create a script that searches for a specific word or phrase across all 
# .log files in a directory and outputs the names of the files that contain the 
# word or phrase.


logfiles=($(ls *.log 2>/dev/null))


findword() {
for (( i=0; i<${#logfiles[@]}; i++ ))
do
    temp=$(cat "./${logfiles[$i]}" | grep "$1")
    if [[ "$temp" == *"$1"* ]]; then
        echo "./${logfiles[$i]}"
    else
        echo "not found"
    fi
done
}




findword "about"