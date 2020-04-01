#!/bin/bash -x

echo "Welcome To Employee Wage Computation"
#CONSTANTS
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_WAGE_PER_HR=20;
#VARIABLES
randomTime=$((RANDOM%3));

case $randomTime in
	$IS_FULL_TIME)
			workHr=8
			;;
	$IS_PART_TIME)
			workHr=4
			;;
	*)
			workHr=0
			;;
esac
echo wage=$(($workHr*$EMP_WAGE_PER_HR));
