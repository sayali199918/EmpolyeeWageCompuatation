#!/bin/bash -x
echo "Welcome to employee wage computation program"

wagePerHours=20
workingHours=8
partTimeHours=4
isPresent=$(( RANDOM % 3 ))
if [ $isPresent -eq 1 ]
then
	echo "Employee is Present full time"
	dailyWage=$(( $wagePerHours * $workingHours ))
	echo $dailyWage
elif [ $isPresent -eq 2 ]
then
	echo "Employee is Present partime"
	dailyWage=$(( $wagePerHours * $partTimeHours ))
	echo $dailyWage
elif [ $isPresent -eq 0 ]
then
	echo "Employee is Absent"
	dailyWage=0
	echo $dailyWage
fi
