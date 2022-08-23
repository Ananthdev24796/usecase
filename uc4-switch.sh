#!/bin/bash -x

isPartTime=0
isFullTime=1
empRatePerHrs=20
randomCheck=$((RANDOM%3))

case $randomCheck in
			$isPartTime )
				empHrs=4
			;;
			$isFullTime )
				empHrs=8
			;;
			*)
				empHrs=0
esac
salary=$(($empHrs*$empRatePerHrs))
