#!/bin/bash -x

echo "****** Welcom to Employee Wage ***"

IS_PRESENT=1
IS_FULLTIME=1
IS_PARTTIME=2
empCheck=$((RANDOM%2))
if [ $empCheck -eq $IS_PRESENT ]
then
	hourCheck=$((RANDOM%3))
if [ $hourCheck -eq $IS_FULLTIME ]
then
	workinghrsPerDay=8
elif [ $hourCheck -eq $IS_PARTTIME ]
then
	workinghrsPerDay=4
else
	workinghrsPerDay=0
fi
	echo "working hours per day : $workinghrsPerDay"
else
	echo "Employee Absent"
fi
