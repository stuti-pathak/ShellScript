#!/bin/bash -x

function getTheTable()
{
	number=$1
	for ((count=1;count<=10;count++ ))
	do
		result=$(($number*$count))
		echo $result
	done
}

calculated_table="$( getTheTable 4 )"
echo $calculated_table
