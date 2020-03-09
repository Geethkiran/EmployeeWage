#!/bin/bash -x

echo "****** Welcom to Employee Wage ***"
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100
total_hours=0
Workingdays=0
total_wage=0
IS_PRESENT=1
IS_FULLTIME=1
IS_PARTTIME=2
IS_ABSENT=0
WAGE_PERHOUR=20
while ((Workingdays<=$MAX_WORKING_DAYS&&$total_hours<=$MAX_WORKING_HOURS))
do
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
	total_hours=$(($workinghrsPerDay+$total_hours))
	total_wage_perday=$(($WAGE_PERHOUR*$workinghrsPerDay))
	total_wage=$(($total_wage_perday+$total_wage))
	((Workingdays++))
fi
done
echo "total wage: $total_wage"
