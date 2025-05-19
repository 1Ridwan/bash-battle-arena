#!/bin/bash

ls -l * | sort $5 | awk '{print $9 " " $5}' 
# lists the files in the directory
# sorts the list based on file size
# prints the filename + size