#!/bin/bash -x
echo "Welcome to employee wage computation program"

wagePerHours=20
#workingHours=8
#partTimeHours=4
workingDaysPerMonth=20
absent=0
fullTime=1
partTime=2
#variables
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0
function getWorkHours () {
	local checkEmp=$1
	case $checkEmp in
		$fullTime)
			empHrs=8
			;;
		$partTime)
			empHrs=4
			;;
		$absent)
			empHrs=0
			;;
	esac
echo $empHrs
}
while [[ $totalWorkingHrs -lt 100 && $totalWorkingDays -lt 20 ]]
do
	isPresent=$(( RANDOM % 3  ))
	((totalWorkingDays++))
	workingHrs=$( getWorkHours $isPresent )
	dailyWage=$(( $wagePerHours * $workingHrs ))
	totalWage=$(( $totalWage + $dailyWage ))
	totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))
done
echo $totalWage
