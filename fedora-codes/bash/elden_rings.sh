#!bin/bash

num1=1
while [[ $num1 -le 10 ]]
do
    read -p "loop $num1 press to continue."

    (( num1 ++ ))
done

