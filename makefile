all: readme

readme: guessinggame.sh
	rm README.md
	touch README.md
	echo "## Guessing game" >> README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	printf "Number of lines of code contained in guessinggame.sh is " >> README.md
	cat guessinggame.sh | wc -l >> README.md
