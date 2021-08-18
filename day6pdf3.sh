

#Ques no 1



function farenheitToCelcius(){
	read -p "Enter the temprature in farenheit: " tempInF
        if [[ $tempInF -ge 32 && $tempInF -le 212 ]]
        then
        	tempInC=$(( $tempInF-32*5/9 ))
                echo $tempInF Farenheight = $tempInC Celcius
        else
                echo Temprature out of limit
        fi
}

function celciusToFarenheit(){
        read -p "Enter the temprature in celcius: " tempInC
        if [[ $tempInC -ge 0 && $tempInC -le 100 ]]
        then
                tempInF=$(( $tempInC*9/5+32 ))
                echo $tempInC Celcius = $tempInF Farenheit
        else
                echo Temprature is out of limit
        fi

}
echo 1 for Farenheit To Celcius
echo 2 for Celcius To Farenheit
read -p "Enter your choice:" choice
case $choice in
                1)
                        farenheitToCelcius;;
                2)
                        celciusToFarenheit;;
                *)
                        echo This key is not associate with anything;;
esac




#Ques no 2


function isPalindrome(){
        read -p "Enter the number to check: " number1
        read -p "Enter the number to check: " number2
        reverse=0
        while [[ $number1 -ne 0 ]]
        do
                reminder=$(($number1%10))
                reverse=$(($reverse*10))
                reverse=$(($reminder +$reverse))
                number1=$(($number1/10))
        done

        if [[ $number2 -eq $reverse ]]
        then
                echo "Numbers are palindrome"
        else
                echo "Numbers are Not Palindrome"
        fi
}
isPalindrome




#Ques no 3


reverse=0
read -p "Enter the number to check: " number
function isPrime(){
        checkNumber=$1
        for (( index=2; index<=$checkNumber/2; index++ ))
        do
                if [[ $checkNumber%$index -eq 0 ]]
                then
                        flag=0
                else
                        flag=1
                fi
        done
        if [[ $flag -eq 1 ]]
        then
                echo $checkNumber is Prime Number
        else
                echo $checkNumber is Not Prime Number
        fi

}

function isPalindrome(){
        firstNumber=$1
        while [[ $firstNumber -ne 0 ]]
        do
                reminder=$(($firstNumber%10))
                reverse=$(($reverse*10))
                reverse=$(($reminder +$reverse))
                firstNumber=$(($firstNumber/10))
        done

        if [[ $1 -eq $reverse ]]
        then
                echo "$1 and $reverse are palindrome"
        else
      echo "Numbers are Not Palindrome"
        fi
}
isPrime $number
isPalindrome $number
isPrime $reverse
