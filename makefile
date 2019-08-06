all: readme

readme: README.md

	touch README.md
	echo "Guessing game" >> README.md
	date >> README.md
	$num=$( cat guessinggame.sh | wc -l )
	echo "Number of lines of code contained in guessinggame.sh is $num"	
