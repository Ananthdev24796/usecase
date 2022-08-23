#!/bin/bash -x

isPartTimr=1
isFullTime=2
empRatePerHrs=20
numOfWorkingDays=20
totalSalary=0

for (( day=1; day<=numOfWorkingDays; day++ ))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$isPartTime )
					empHrs=4
				;;
				$isFullTime )
					empHrs=8
				;;
				* )
					empHrs=0
				;;
	esac

	salary=$(($empHrs*$empRatePerHrs))
	totalSalary=$(($totalSalary+$salary))
done