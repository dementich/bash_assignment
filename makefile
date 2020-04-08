README: guessinggame.sh
	echo "Project: bash_assignment" > README.md
	echo ""
	
	echo "\nmake was run at:" >> README.md
	date >> README.md
	echo ""
	
	echo "\nLines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
