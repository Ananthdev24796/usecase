#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
numOfWorkingDays=20
empRatePerHrs=20

totalEmpHrs=0
totalWorkingDays=0

while [[  $totalEmpHrs -lt  $maxRateInMonth &&  $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$ispartTime )
					empHrs=4
				;;
				$isFullTime )
					empHrs=8
				;;
				*)
					empHrs=0
				;;
	esac
		totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalsalary=$(($totalEmpHrs*$empRatePerHrs))
