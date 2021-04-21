echo "Welcome"

heads=1
tails=0
headsWin=0
tailsWin=0
totalWins=21

while [[ $choice -eq 'n' ]]
do
	flipCoin=$((RANDOM%2))

	read -p "Flip Coin ??(y/n)=" choice;
	case $choice in
		y)
			if [ $flipCoin -eq $heads ]
			then
				echo "Heads is the Winner!"
				((headsWin++))
				echo "Heads has won "$headsWin" times!"
			elif [ $flipCoin -eq $tails ]
			then
				echo "Tails is the Winner!"
				((tailsWin++))
				echo "Tails has won $tailsWin times!"
			fi;;
		n)
			exit;;
	esac

	if [[ $totalWins -eq $headsWin ]]
	then
		echo "Heads has Won total 21 times And is the winner!!"
		break
	elif [[ $totalWins -eq $tailsWin ]]
	then
		echo "Tails has Won total 21 times And is the winner!!"
      break
	elif [[ $totalWins -eq $headsWin && $totalWins -eq $tailsWin ]]
	then
		echo "The game is a Tie!"
		break
	fi
done
