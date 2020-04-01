#!/bin/bash -x

echo "Welcome To Employee Wage Computation"

#CONSTANTS
IS_FULL_TIME=1;
IS_PART_TIME=2;
#VARIABLES
empWagePerHr=20;
randomNum=$((RANDOM%3));

if [ $IS_FULL_TIME -eq $randomNum ];
then
		workHr=8;
elif [ $IS_PART_TIME -eq $randomNum ];
then
		workHr=4;
else
		workHr=0;
fi

echo wage=$(($workHr*$empWagePerHr));
