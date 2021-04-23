#!/bin/bash
i=1
max=6
b=5000
date=`date +%m%d%H%M`

while ((i <= $max))
do
    ssd1="nohup chia plots create -k 32 -n 1 -b ${b} -t /ssd1/chia${i}-t -2 /hd1/chia -d /hd1/data -r 20 -u 128 -e  > log${date}-1-${i} 2>&1 &"
    echo $ssd1
    eval $ssd1
    
    if ((i == 3))
    then
	echo "sleep 2 hours..."
	sleep 7200
    fi

    ((i++))

done

