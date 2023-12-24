#!/bin/bash

# Assign the arguments to variables
filesdr=$1
searchstr=$2

# Check if arguments were specified
if [ $# != 2 ]
then
echo "Arguments were not specified. Specify two arguments as follows:"
echo "1: Path to directory on the filesystem"
echo "2. Text string to be searched within these files"
exit 1
fi

# Check if the filesdr argument is actually a directory
if [ ! -d ${filesdr} ]
then
echo "The directory specified is invalid"
exit 1
fi

# Obtain the number of files in the search directory
number_of_files=$(find ${filesdr} -type f | wc -l)

# Obtain the number of matching lines containing the string
matching_lines=$(grep -r "${searchstr}" ${filesdr}* | wc -l)

# Print the output
echo "The number of files are ${number_of_files} and the number of matching lines are ${matching_lines}"

# Exit the script with success code
exit 0



