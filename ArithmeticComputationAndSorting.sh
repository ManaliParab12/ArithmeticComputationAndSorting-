#!/bin/bash -x

declare -A Arithmetic

echo "Welcome to Arithmetic Computation And Sorting"


read -p "Enter First Input : " num1
read -p "Enter Second Input : " num2
read -p "Enter Third Input : " num3

compute1=`echo $(($num1+$num2*$num3))`
echo "Result of a + b * c : " $compute1

compute2=`echo $(($num1*$num2+$num3))`
echo "Result of a * b + c : " $compute2

compute3=`echo $(($num3+$num1/$num2))`
echo "Result of c + a / b : " $compute3

compute4=`echo $(($num1%$num2+$num3))`
echo "Result of a % b + c: " $compute4

Arithmetic[compute1]="$compute1"
Arithmetic[compute2]="$compute2"
Arithmetic[compute3]="$compute3"
Arithmetic[compute4]="$compute4"

echo "Every computation result in Dictionary : " ${Arithmetic[@]}

index=0
for i in "${Arithmetic[@]}"
do
       arr[index++]=$i
done

echo "Array Result" ${arr[@]}

size=${#arr[@]}
echo "Size of array" $size

function Descending() {

for (( i=0; i<$size-1; i++ ))
do
   for (( j=0; j<$size-$i-1; j++ ))
   do
     if [[ ${arr[$j]} -lt ${arr[$j+1]} ]]
     then
        temp=${arr[$j]}
        arr[j]=${arr[$j+1]}
        arr[j+1]=$temp
     fi
   done
done

echo "Result in Descending Order : " ${arr[@]}
}

function Ascending() {
for (( i=0; i<$size-1; i++ ))
do
   for (( j=0; j<$size-$i-1; j++ ))
   do
     if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
     then
        temp=${arr[$j]}
        arr[j]=${arr[$j+1]}
        arr[j+1]=$temp
     fi
   done
done

echo "Result in Ascending Order : " ${arr[@]}
}

Descending
Ascending

