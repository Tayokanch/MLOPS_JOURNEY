function add(){
    sum=$(( $1 + $2))
    echo sum
}
add 4 7

function add(){
    sum=$(( $1 + $2))
    return sum : This will only turn the exit code which would be 0 if the script runs succesfully and 1 if it failed
}


#!/bin/bash
function read_numbers(){
   read -p "Enter Number1: " number1
   read -p "Enter Number2: " number2
}

while true
do
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Quit"

  read -p "Enter your choice: " choice

  case $choice in
    1)
        read_numbers
        echo Answer=$(( $number1 + $number2 ))
        ;;
    2)
        read_numbers
        echo Answer=$(( $number1 - $number2 ))
        ;;

    3)
        read_numbers
        echo Answer=$(( $number1 * $number2 ))
        ;;
    4)
        read_numbers
        echo Answer=$(( $number1 / $number2 ))
        ;;
    5)
        break
        ;;