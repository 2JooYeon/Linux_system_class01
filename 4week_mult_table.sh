#!/bin/sh

rows=$1
cols=$2

if [ $rows -le 0 -o $cols -le 0 ]
then
        echo "Rows and columns must be positive integers."

else
	for i in $(seq 1 $rows)
	do
		for j in $(seq 1 $cols)
		do
			result=`expr $i \* $j` 
			echo -n "$i*$j=$result   "
		done
		echo ""
	done	
fi
exit 0

