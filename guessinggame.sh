#!/usr/bin/env bash
nfiles=$(ls | wc -l)
function high {
echo "Too high. Try again"
read response
}
function low {
echo "Too low. Try again"
read response
}
echo "How many files are there in the current directory? Enter a number."
read response
while [[ $response != $nfiles ]]
do
	if [[ $response -lt $nfiles ]]
	then
        low
    	else
	high
	fi
done
echo "Congratulations! Your guess is correct! "
