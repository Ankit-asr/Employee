#!/bin/bash

#CONSTANTS
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_PER_HOUR_RATE=20

#VARIABLES
workHour=0
salary=0
attendance_Status=$((RANDOM%3))  #Check attendance status using RANDOM function

if [[ $IS_FULL_TIME -eq $attendance_Status ]]
then
        workHour=8
echo Employee is Full Time Employee

elif [[ $IS_PART_TIME -eq $attendance_Status ]]
then
        workHour=4
echo Employee is Part Time Employee
else
        workHour=0
echo Employee is Absent
fi
echo "Working hours of employee : " $workHour 				#Print work hours for the day and resulting salary.
echo "Daily wage of employee : " $(( workHour * EMPLOYEE_PER_HOUR_RATE ))
