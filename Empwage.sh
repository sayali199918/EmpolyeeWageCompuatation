#!/bin/bash 
echo "Welcome to employee wage computation program"
#constants
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
	workingHrs=$( getWorkHours $isPresent )
	dailyWage[totalWorkingDays]=$(( $wagePerHours * $workingHrs ))
	totalWage=$(( $totalWage + ($wagePerHours * $workingHrs)  ))
	totalWage[$totalWorkingDays]=$totalWage
	totalWorkingHrs=$(( $totalWorkingHrs + $workingHrs ))
	((totalWorkingDays++))

done
for (( i=0; i<$totalWorkingDays; i++ ))
do
	echo ${dailyWage[$i]}" "${totalWage[$i]}
done

echo $totalWage
echo ${dailyWage[@]}

echo ${totalWage[@]}
