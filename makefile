all: readme

readme:
	rm README.md
	touch README.md
	echo "## Guessing game" >> README.md
	date >> README.md
	printf "Number of lines of code contained in guessinggame.sh is " >> README.md
	cat guessinggame.sh | wc -l >> README.md
