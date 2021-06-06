#!/bin/bash

#CONSTANTS
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_PER_HOUR_RATE=20

#VARIABLES
workHour=0
salary=0
attendance_Status=$((RANDOM%3))  #Check attendance status using RANDOM function

case $attendance_Status in

   $IS_PART_TIME)
	echo Employee is Part Time Employee
        workHour=4 ;;

   $IS_FULL_TIME)
        echo Employee is Full Time Employee
	workHour=8 ;;

   *)
	echo Employee is Absent
        workHour=0 ;;

esac

 echo "Working hours of employee : " $workHour 				#Print work hours for the day and resulting salary.
echo "Employee daily wage : " $(( workHour * EMPLOYEE_PER_HOUR_RATE ))
 
