pcnt_="df -m |grep ssd2|awk '{sub(/%/,\"\"); print \$5}'"

while (true)
do
    echo `date -R`
    echo $pcnt_
    pcnt=`eval $pcnt_`
    echo $pcnt

    if (( $pcnt < 2 ))
    then
            echo "create plot has done, start new tasks"
	    source create_plots2.sh
    else
            echo "plotting..."
    fi
    sleep 60
done

