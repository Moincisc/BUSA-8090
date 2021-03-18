#! /bin/bash
#ls

min=$(date +'%M')
echo "Current minute ${min}"

if [ "$min" -gt 0 ] && [ "$min" -lt 20 ]
then
    echo "no chime"
elif [ "$min" -gt 20 ] && [ "$min" -lt 40 ]
then
    echo "one chime"
elif [ "$min" -gt 40 ] && [ "$min" -lt 60 ]
then
    echo "two chimes"
elif [ "$min" -eq 40 ]
then
    echo "Between two chimes, going to sleep for 1 second"
	sleep 1
	echo "Sleep Done"
fi