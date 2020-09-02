all: README.md

README.md: guessinggame.sh
	echo "# The Unix Workbench course assignment" > README.md
	echo "*by Johns Hopkins University on Coursera.*" >> README.md
	echo -n "\n**Make date:** " >> README.md
	date >> README.md
	echo -n "\n**Number of lines of code contained in guessinggame.sh:** " >> README.md
	wc -l < ./guessinggame.sh >> README.md
