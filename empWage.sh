#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=20
maxWorkingDays=20
totalSalary=0

for (( days=1;days<=$maxWorkingDays;days++ ))
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
	salary=$(($empRatePerHr*$empHrs))
	totalSalary=$(($totalSalary+$salary))
done
echo "employee total salary for the month: "$totalSalary
