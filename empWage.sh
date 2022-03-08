#!/bin/bash -x

isPresent=1
empRatePerHr=20
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPresent ]
then
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
else
	salary=0
fi
echo "employee salary: "$salary
