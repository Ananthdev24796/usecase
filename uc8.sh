#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHrs=20
maxRateInMonth=100
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

#function to calculate  dailywage

function getWorkHours()
{
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
}
#funtion to calculate totalwage/total salary

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHrs))
}


while [[ $totalEmpHr -lt $maxRateInMonth  &&  $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkHours $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHrs))
done
totalSalary=$( getEmpWage $totalEmpHr )
echo ${dailyWages[@]}	

