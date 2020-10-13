#!/bin/bash -x

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

