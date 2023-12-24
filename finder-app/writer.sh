#!/bin/bash

# Assign arguments to respective variables
writefile=$1
writestr=$2

# Check if the required arguments have been provided
if [ $# != 2 ]
then
echo "Arguments not specified. Arguments include:"
echo "1. Full path to the file (including filename)"
echo "2. Text string to be written into the file"
exit 1
fi

# Create the directory and add the file
mkdir -p "$(dirname ${writefile})" && touch ${writefile}

# Check if the file exists before writing into it
if [ ! -f ${writefile} ]
then
echo "Error creating file"
exit 1
else
echo ${writestr} > ${writefile}
fi

# Return with success code
exit 0



