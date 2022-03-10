#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))
if [ $randomCheck -eq $isFullTime ]
then
	empHrs=8
elif [ $randomCheck -eq $isPartTime ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(($empRatePerHr*$empHrs))
echo "employee salary: "$salary
