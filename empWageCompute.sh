#!/bin/bash -x

echo "****** Welcom to Employee Wage ***"

IS_PRESENT=1
WAGE_PERHOUR=20
WORKING_HOURS_PERDAY=8
empCheck=$((RANDOM%2))
if [ $empCheck -eq $IS_PRESENT ]
then
	total_wage_perday=$(($WAGE_PERHOUR*$WORKING_HOURS_PERDAY))
	echo "$total_wage_perday"
else
	echo "Employee Absent"
fi
