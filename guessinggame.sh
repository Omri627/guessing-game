#!/usr/bin/env bash
# File guessinggame.sh

function guessgame {

	# get the number of files in current directory
	num_files=$( ls -l | egrep "^-" | wc -l )
	#this will indicate if the user got the right answer
	local is_right=1

	echo "Type on your guess for how much files in this directory"
	while [[ $is_right -ne 0 ]]
	do
		read response
		if [[ $response -eq $num_files ]]
		then
			echo "Congratulation, you are right."
			is_right=0
		elif [[ $response -gt $num_files ]]
		then
			echo "You're answer is too high, try again"
		else
			echo "You're answer is too low, try again"
		fi
	done
}

guessgame
