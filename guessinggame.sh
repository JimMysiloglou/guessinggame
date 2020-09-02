#!/usr/bin/env bash
# File: guessinggame.sh
# Graded assignment for Coursera/The Unix Workbench

echo "Welcome to the game. Can you guess the number of files in the current directory?"

function ask {
	echo "Please enter your guess:"
	read guess
	files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]]
	then
		echo "Your guess is too low."
	else
		echo "Your guess is too high."
	fi
		ask
done

echo "Congratulations! You've guessed right!"
echo "End Program"
