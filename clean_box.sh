#!/bin/bash

if [[ -z $1 ]]; then
    echo "Need box name!"
    exit
fi

boxName=$1

array=()
array+=($(vagrant box list | grep -w $boxName | awk '{gsub(")", ""); print $3}'))
arraySize=${#array[@]}

if [[ $arraySize == 0 ]]; then
    echo "Box is not exist!"
    exit
fi

if [[ $arraySize == 1 ]]; then
    echo "Only one box exist!"
    exit
fi

unset array[-1]

for (( i = 0; i < $arraySize - 1; i++ )); do
    command=`vagrant box remove $boxName --box-version ${array[i]}`
    echo $command
done
