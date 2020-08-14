#!/bin/bash
function guess(){
count=1
nooff=$(ls |wc -l)
echo $nooff
while [ $count = "1" ]
do
	echo "Enter a number"
	read response
	if [ $response == $nooff ]
	then
		echo "Congratulations you guessed it right"
		count=0
	elif [ $response -gt $nooff ]
	then
		echo "Too High"
	else
		echo "Too Low"
	fi
done
}
guess
