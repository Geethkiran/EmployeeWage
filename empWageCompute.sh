#!/bin/bash -x

echo "****** Welcom to Employee Wage ***"

IS_PRESENT=1
IS_FULLTIME=1
IS_PARTTIME=2
IS_ABSENT=0
WAGE_PERHOUR=20
WorkingDaysInMonth=20
empCheck=$((RANDOM%2))
if [ $empCheck -eq $IS_PRESENT ]
then
hourCheck=$((RANDOM%3))
case $hourCheck in
$IS_FULLTIME)
	workinghrsPerDay=8
;;
$IS_PARTTIME)
	workinghrsPerDay=4
;;
$IS_ABSENT)
	workinghrsPerDay=0
;;
esac
	total_wage_perday=$(($WAGE_PERHOUR*$workinghrsPerDay))
	total_wage_PerMonth=$(($total_wage_perday*$WorkingDaysInMonth))
	echo "total wage per day: $total_wage_PerMonth"
else
	echo "Employee Absent"
fi
