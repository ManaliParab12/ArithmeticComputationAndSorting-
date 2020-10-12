#!/bin/bash -x

echo "Welcome to Arithmetic Computation And Sorting"


read -p "Enter First Input : " num1
read -p "Enter Second Input : " num2
read -p "Enter Third Input : " num3

compute=`echo "scale=2; $num1+$num2*$num3" | bc`
echo "Result : " $compute

compute=`echo "scale=2; $num1*$num2+$num3" | bc`
echo "Result : " $compute

compute=`echo "scale=2; $num3+$num1/$num2" | bc`
echo "Result : " $compute
