#Ques no 1

read -p "Enter a number:" Number
for ((counter=1;counter<=Number;counter++))
do
        expr=$((2*$counter))
        echo $expr
done



#Ques no 2

harmonic=1
read -p "Enter a nth Harmonic number:" Hn
for (( counter=1;counter<$Hn;counter++ ))
do
	harmonic=$(( $harmonic + 1/$counter ))
	echo $harmonic
done
echo "Harmonic number at $Hn th  place is $harmonic"



#Ques no 3

flag=0
read -p "Enter the number:" number
for (( index=2; index<=number/2; index++ ))
do
        if [ $(( number%index )) -eq 0 ]
        then
                flag=1
        fi
done

if [ $flag -eq 1 ]
then
        echo $number "is not prime"
else
        echo $number "is a prime number"
fi


#Ques no 4

flag1=1
read -p "Enter a range of start number:" start
read -p "Enter a range of last number:" last
for (( index=start; index<last; index++ ))
do
for (( counter=2; counter<=index/2; counter++ ))
    do
	if [ $(( $index % $counter )) -eq 0 ]
	then
                 flag1=0
                 break
        else
                 flag1=1
        fi
    done

 
	if [ $(($flag1)) -eq 1 ]
	then
		echo $index
	fi
done



#Ques no 5

read -p "Enter a number:" number
factorial=1
for (( counter=2;counter<=number;counter++ ))
do
        factorial=$(( $factorial * $counter ))
done
echo "factorial number of " $number "is" $factorial
