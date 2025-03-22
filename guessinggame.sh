echo "Hey user what's up ?"
echo "Let's begin the guessing game"
guess=$(ls -1A|wc -l) #ls -1A for all files even hidden where wc for counting

function guess_num() {
	local num=$1
	if [[ "$num" -eq "$guess" ]]
	then
		echo "Wow u did it perfectly,Congo bruh!!"
		exit 0
	elif [[ "$num" -lt "$guess" ]]
	then
		echo "Ohh shit it's too low try again please"
	else
		echo "You always think too high just little lower your gutt"
	fi
}

while true
do
	echo "Enter your guess my bruh:"
	read a
	a=$(echo "$a" | tr -d '[:space:]')
	if [[ !"$a" =~ ^[0-9]+$ ]] #Rejecting non numeric
	then
		echo "Enter a valid number"
		continue
	else
		guess_num $a
	fi
done
