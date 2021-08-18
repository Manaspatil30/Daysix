# Ques no 1

read -p "Enter a number to find the power:" number
counter=1
while [ $counter -le $number ]
do
        if [[ $counter -eq 9 ]]
        then
                break
        else
                exp=$(( 2**$counter ))
                echo $exp
                (( counter++ ))
        fi
done



#Ques no 2

read -p "Enter the number between 1 to 100 :" number
start=1
end=100
middle=$(( ($start+$end)/2 ))
while [ $start -lt $end ]
do
	if [[ $number -eq $middle ]]
	then 
		echo $middle
		break
	elif [ $number -lt $middle ]
	then
		end=$middle
		middle=$(( ($start+$end)/2 ))
	else
		start=$middle
		middle=$(( ($start+$end)/2 ))
	fi
done




#Ques no 3


headcount=0
tailcount=0
while [[ $headcount -le 10 && $tailcount -le 10 ]]
do
        if [ $(( $RANDOM%2 )) -eq 0 ]
        then
                headcount=$(( $headcount+1 ))
        else
                tailcount=$(( $tailcount+1 ))
        fi
done
echo "Head" $headcount
echo "Tail" $tailcount



#Ques no 4


stake=100
goal=200
numberoftimeswon=0
betnumber=0
while [[ $stake -gt 0 && $stake -le $goal ]]
do
        betnumber=$(($betnumber+1))
        if [ $(($RANDOM%2)) -eq 0 ]
        then

                numberoftimeswon=$(($numberoftimeswon+1))
                stakes=$(($stakes+1))
        else

                stakes=$(($stakes-1))
        fi
done
echo number of times you won $numberoftimeswon
echo Total number of bet placed $betnumber
echo current stake are $stake



