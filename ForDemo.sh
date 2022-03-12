#!/bin/bash -x
for (( counter=1;counter<=10;counter++ ))
do
	num=$((2*counter))
	echo $num
done

