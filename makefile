all: README.md

README.md: guessinggame.sh
	echo "## Guessing game program" > README.md
	echo "Author: B. Heitner" >> README.md
	echo "Date and time of this file: " $$(date +%c) >> README.md
	echo "Number of lines in the program file:" $$(wc -l < guessinggame.sh) >> README.md
	echo "Objectives:" >> README.md
	echo "- Let people guess the number of files in the current directory" >> README.md
	echo "- Finish *The Unix Workbench* course">> README.md
	echo "- Have fun :grin:" >> README.md
