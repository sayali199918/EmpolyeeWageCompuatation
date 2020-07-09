#!/bin/bash -x
echo "Welcome to employee wage computation program"

wagePerHours=20
workingHours=8
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "Employee is Present"
	dailyWage=$(( $wagePerHours * $workingHours ))
	echo $dailyWage
elif [ $isPresent -eq 0 ]
then
	echo "Employee is Absent"
	dailyWage=0
	echo $dailyWage
fi
