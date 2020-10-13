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
