##!/bin/bash -x
echo "Welcome to employee wage computation program"

isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "Employee is Present"
elif [ $isPresent -eq 0 ]
then
	echo "Employee is Absent"
fi
