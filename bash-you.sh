#! /bin/bash

echo $SHELL
echo $shell

#1
if [ -z $shell ]; then
    echo "shell is empty"
else
    echo "shell is not empty"
fi

#2
if [ 3 -gt 50 ]; then
    echo "3 is greater than 50"
else
    echo "3 is not greater than 50"
fi

#3
if (( 3 > 50 )); then
    echo "3 is greater than 50"
else
    echo "3 is not greater than 50"
fi

#4  
for i in {1..5}; do 
    echo $i
done

#5

read -p "Enter a number: " k
if (( k > 50 )); then
    echo "k is greater than 50"
else
    echo "k is not greater than 50"
fi

while [ $k -le 10 ]; do
    echo $k
    k=$((k+1))
done

#6
function asd {
    echo "asd"
}
