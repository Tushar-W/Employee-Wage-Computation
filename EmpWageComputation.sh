#!/bin/bash	-x

echo	"Welcome To Employee Wage Computation"

#CONSTANTS
IS_PRESENT=1;

#VARIABLES
empWagePerHr=20;
fullDayHr=8;
wage=0;
randomNum=$((RANDOM%2));

if	[	$IS_PRESENT	-eq	$randomNum	];
then
	echo wage=$((empWagePerHr*fullDayHr));
else
	echo "wage= "$wage
fi
