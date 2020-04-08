function print_hint {
	if [[ $1 -lt $2 ]]
	then
		echo "Your guess is too small. Guess more!"
	else
		echo "Your guess is too high. Guess less!"
	fi
}

a_num=$(ls -A | wc -w)

while : ; do
	echo "Please guess a number of files in the directory"
	read g_num
	if [[ $g_num -eq $a_num ]]
	then
		break
	else
		print_hint $g_num $a_num
	fi
done

echo "Congratulations! The folder contains exactly $a_num file(s)"
