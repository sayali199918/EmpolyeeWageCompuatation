#!/bin/bash 
echo "Welcome to employee wage computation program"
#constants
wagePerHours=20
workingDaysPerMonth=20
absent=0
fullTime=1
partTime=2
#variables
totalWage=0
totalWorkingHrs=0
totalWorkingDays=0
count=0

declare -A dailyWage
declare -A totalWage

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
	dailyWage["Day "$totalWorkingDays]=$(( $wagePerHours * $workingHrs ))
	totalWage=$(( $totalWage + ($wagePerHours * $workingHrs)  ))
	totalWage["Day "$totalWorkingDays]=$totalWage
	totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))
done
echo "Day NO.   DailyWage     TotalWage"
for (( i=1;i<=$totalWorkingDays; i++ ))
do
	echo " Day "$i"        "${dailyWage["Day "$i]}"          "${totalWage["Day "$i]}
done
