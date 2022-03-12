#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=20
maxWorkingDays=20
maxWorkingHrs=100
totalSalary=0
totalWorkingDays=1
totalWorkingHrs=0
while [[ $totalWorkingDays -le $maxWorkingDays && $totalWorkingHrs -lt $maxWorkingHrs ]]
do
	empCheck=$((RANDOM%3))
	case $empCheck in 
		$isFullTime) empHrs=8
						;;
		$isPartTime) empHrs=4
						;;
					*) empHrs=0
						;;
	esac
	totalWorkingHrs=$(($totalWorkingHrs+$empHrs))
	((totalWorkingDays++))
done
totalSalary=$(($totalWorkingHrs*$empRatePerHr))
echo "employee total salary for the month: "$totalSalary
