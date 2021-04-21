echo "Welcome"

heads=1
tails=0
headsWin=0
tailsWin=0
totalWins=21

function flippingCoin(){

flipCoin=$((RANDOM%2))
if [ $flipCoin -eq $heads ]
then
	((headsWin++))
elif [ $flipCoin -eq $tails ]
then
	((tailsWin++))
fi

}

function whoWins(){

if [[ $totalWins -eq $headsWin ]]
then
	echo "Heads has Won total 21 times And is the winner!!"
	winDiff=$(($headsWin-$tailsWin))
	echo "Heads Won by "$winDiff
elif [[ $totalWins -eq $tailsWin ]]
then
	echo "Tails has Won total 21 times And is the winner!!"
	winDiff=$(($tailsWin-$headsWin))
	echo "Tails Won by "$winDiff
fi

}

while [[ $headsWin -ne $totalWins && $tailsWin -ne $totalWins ]]
do
	flippingCoin
	whoWins
	if [[ $totalWins -eq $headsWin && $totalWins -eq $tailsWin ]]
	then
		echo "The game is a Tie!"
		flippingCoin
		diff=$(($headsWin-$tailsWin))
		if [[ $diff -eq '2' || $diff -eq '-2' ]]
		then
			if [ $headsWin -gt $tailsWin ]
			then
				echo "Heads Wins"
				break
			elif [ $headsWin -lt $tailsWin ]
         then
            echo "Tails Wins"
            break
			fi
		fi
	fi
done
