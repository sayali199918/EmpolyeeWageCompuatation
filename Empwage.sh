#!/bin/bash -x
echo "Welcome to employee wage computation program"

wagePerHours=20
workingHours=8
partTimeHours=4
workingDaysPerMonth=20
absent=0
fullTime=1
partTime=2
#variables
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0
while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
do
	isPresent=$(( RANDOM % 3  ))
	((totalWorkingDays++))
	case $isPresent in
		$fullTime)
		echo "Employee is Present full time"
		dailyWage=$(( $wagePerHours * $workingHours ))
		totalWage=$(( $totalWage + $dailyWage ))
		totalWorkingHrs=$(( $totalWorkingHrs + $workingHours ))
		;;
		$partTime)
		echo "employee is  Present partime"
		dailyWage=$(( $wagePerHours * $partTimeHours ))
		totalWage=$(( $totalWage + $dailyWage ))
		totalWorkingHrs=$(( $totalWorkingHrs + $workingHours ))
		;;
		$absent)
		echo "Employee is Absent"
		dailyWage=0
		totalWage=$(( $totalWage + $dailyWage ))
		;;
	esac
done
echo $totalWage

