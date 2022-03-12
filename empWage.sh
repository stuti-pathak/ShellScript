#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=20
maxWorkingDays=20
maxWorkingHrs=100
totalSalary=0
totalWorkingDays=1
totalWorkingHrs=0

function getEmpHrs(){
	case $1 in 
      $isFullTime) empHrs=8
                  ;;
      $isPartTime) empHrs=4
                  ;;
               *) empHrs=0
                  ;;
   esac
	echo $empHrs
}
while [[ $totalWorkingDays -le $maxWorkingDays && $totalWorkingHrs -lt $maxWorkingHrs ]]
do
	empCheck=$((RANDOM%3))
	empHrs="$( getEmpHrs $empCheck )"
	#salary=$(($empRatePerHr*$empHrs))
	totalWorkingHrs=$(($totalWorkingHrs+$empHrs))
	#totalSalary=$(($totalSalary+$salary))
	((totalWorkingDays++))
done
totalSalary=$(($totalWorkingHrs*$empRatePerHr))
echo "employee total salary for the month: "$totalSalary
