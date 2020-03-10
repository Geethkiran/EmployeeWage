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
count=0
getemphr(){
	hourCheck=$1
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
echo "$workinghrsPerDay"
}
while ((Workingdays<=$MAX_WORKING_DAYS&&$total_hours<=$MAX_WORKING_HOURS))
do
	workinghrs="$( getemphr $(($RANDOM%3)))"
	total_hours=$(($workinghrs+$total_hours))
	total_wage_perday=$(($WAGE_PERHOUR*$workinghrs))
	wagesPerday[count]=$total_wage_perday
	((count++))
	total_wage=$(($total_wage_perday+$total_wage))
	((Workingdays++))
done
echo "daily wages: ${wagesPerday[@]}"
echo "total wage: $total_wage"
