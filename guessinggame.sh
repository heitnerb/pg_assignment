#This is a program to make the user guess the number of files in the current folder.

echo "Guess the number of files in the current directory, please!"
read response 

function wrong_answer {
	echo "Your guess is too $1, plase try again!"
}

good_number=$(ls -A | wc -l)

while ! [[ $good_number -eq $response ]] 2> /dev/null
do
	if ! [[ $response =~ ^[0-9]+$ ]]
	then
		echo "Please enter a valid number!"
		read response

	elif [[ $good_number -gt $response ]]
	then
		wrong_answer low
		read response
	elif [[ $response -gt $good_number ]]
	then
		wrong_answer high
		read response
	fi
done
echo "Congratulations! Your guess is correct! Thank you!"
