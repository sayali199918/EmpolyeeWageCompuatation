#!/bin/bash -x
echo "Welcome to employee wage computation program"

wagePerHours=20
workingHours=8
partTimeHours=4
absent=0
fullTime=1
partTime=2
isPresent=$(( RANDOM % 3 ))
case $isPresent in
	$fullTime)
	echo "Employee is Present full time"
	dailyWage=$(( $wagePerHours * $workingHours ))
	echo $dailyWage
	;;
	$partTime)
	echo "employee is  Present partime"
	dailyWage=$(( $wagePerHours * $partTimeHours ))
	echo $dailyWage
	;;
	$absent)
	echo "Employee is Absent"
	dailyWage=0
	echo $dailyWage
	;;
esac
