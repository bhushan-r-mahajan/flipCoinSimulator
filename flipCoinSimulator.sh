
echo "Welcome"

heads=1
tails=0

flipCoin=$((RANDOM%2))

if [ $flipCoin -eq $heads ]
then
	echo "Heads is the Winner!"
elif [ $flipCoin -eq $tails ]
then
	echo "Tails is the Winner!"
fi
