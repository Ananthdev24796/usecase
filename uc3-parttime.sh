#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHrs=30
randomCheck=$((RANDOM%3))

if [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
elif [ $isFullTime -eq $randomCheck ]
then
	empHrs=8
else
	empHrs=0
fi
salary=$(($empHrs*$empRatePerHrs))



