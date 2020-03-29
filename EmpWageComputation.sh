#!/bin/bash	-x

echo	"Welcome To Employee Wage Computation"

#	CONSTANTS
IS_PRESENT=1;

#	VARIABLES
randomNum=$((RANDOM%2));

if	[	$IS_PRESENT	-eq	$randomNum	];
then
	echo	"Employee is Present";
else
	echo	"Employee is Absent";
fi
