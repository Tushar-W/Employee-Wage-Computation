#!/bin/bash -x

echo "Welcome To Employee Wage Computation"
#CONSTANTS
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_WAGE_PER_HR=20;
WORKING_DAYS_PER_MONTH=20;
#VARIABLES
monthlyWage=0;

function getMonthlyWage() {
		for (( day=1; day<=$WORKING_DAYS_PER_MONTH; day++ ))
		do
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
			wage=$(($workHr*$EMP_WAGE_PER_HR));
			monthlyWage=$(($monthlyWage+$wage));
		done
		echo $monthlyWage
}
monthlyWage=$( getMonthlyWage )
echo "Wages for a Month:" $monthlyWage
