#!/bin/bash
numerator=1
denominator=1
previous=$(($numerator/$denominator))
for sign in $(seq 1 49)
do
	
	numerator=$(echo "$numerator * $(($sign+1))" | bc -l)
	denominator=$(($denominator*2+1))
	

	if [ $(($sign%2)) = 0 ]
		then 
		previous=$(echo "$previous+$numerator/$denominator" | bc -l)
		
		
	fi
	if [  $(($sign%2)) != 0 ]
		then 
		previous=$(echo "$previous-$numerator/$denominator" | bc -l)
		
		
	fi
	
done
echo "resultado = $previous"


