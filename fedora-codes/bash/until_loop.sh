#!bin/bash

#until loop is 
#when the loop is true it will stop the loop
#until loop is true the will run

echo "until loop example:"
until [[ $name == "prakash" ]]
do
    echo "enter your name correctly"
    read name
done

echo "congrats $name. you beak the loop until your name is prakash"