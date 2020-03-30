#!/bin/bash	-x

echo	"Welcome To Employee Wage Computation"
declare	-A	empWagePerDay
#CONSTANTS
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_WAGE_PER_HR=20;
WORKING_DAYS_PER_MONTH=20;
HRS_IN_MONTH=100;
#VARIABLES
totalWorkHr=0;
workingDays=0;

function	getWorkHours()	{
	case	$1	in
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
	echo	$workHr
}
function	getDailyWage()	{
	local workHrPerDay=$1;
	wagePerDay=$((workHrPerDay	*	EMP_WAGE_PER_HR));
	echo	$wagePerDay
}

while	[[	$totalWorkHr	-lt	$HRS_IN_MONTH	]]	&&	[[	$workingDays	-lt	$WORKING_DAYS_PER_MONTH	]]
do
	randomTime=$((RANDOM%3));
	((workingDays++));
	workHr="$(	getWorkHours	$randomTime	)"
	totalWorkHr=$((totalWorkHr	+	workHr));
	empWagePerDay[$workingDays]="$(	getDailyWage	$workHr	)"
done
echo	monthlyWage=$((totalWorkHr	*	EMP_WAGE_PER_HR));
echo	"Daily Wage : "${empWagePerDay[@]}
echo	"Day : "${!empWagePerDay[@]}
