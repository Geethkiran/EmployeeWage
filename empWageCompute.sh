#!/bin/bash -x

echo "****** Welcom to Employee Wage ***"

IS_PRESENT=1

empCheck=$((RANDOM%2))
if [ $empCheck -eq $IS_PRESENT ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
