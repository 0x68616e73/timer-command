#!/bin/zsh
i=0
clear
echo "Select parametr:\ns-second\nm-minute\nh-hour\nd-day"
read 
sleep_args=$REPLY

echo "Enter a number"
read 
sleeptime=$REPLY



sleep="$sleeptime$sleep_args"
clear

case $sleep_args in
    s)
        while [ $i -le $sleeptime ] 
        do
            remaintime=`expr $sleeptime - $i`
            if [ $remaintime -eq 0 ]
            then
                echo "Opening website."
                xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
                exit
            else
                
                echo "After $remaintime second, a browser page'll open."
                sleep 1s
                i=$(( i + 1 ))
            fi
        done
    ;;

    m)
        while [ $i -le $sleeptime ] 
        do
            remaintime=`expr $sleeptime - $i`
            if [ $remaintime -eq 0 ]
            then
                echo "Opening website."
                xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
                exit
            else
                
                echo "After $remaintime minute, a browser page'll open."
                sleep 1m
                i=$(( i + 1 ))
            fi
        done
    ;;

    h)
        while [ $i -le $sleeptime ] 
        do
            remaintime=`expr $sleeptime - $i`
            if [ $remaintime -eq 0 ]
            then
                echo "Opening website."
                xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
                exit
            else
                
                echo "After $remaintime hour, a browser page'll open."
                sleep 1h
                i=$(( i + 1 ))
            fi
        done
    ;;

    d)
        while [ $i -le $sleeptime ] 
        do
            remaintime=`expr $sleeptime - $i`
            if [ $remaintime -eq 0 ]
            then
                echo "Opening website."
                xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
                exit
            else
                
                echo "After $remaintime day, a browser page'll open."
                sleep 1d
                i=$(( i + 1 ))
            fi
        done
    ;;

    *)
        echo -n "Try again :("
        exit
    ;;
esac

exit
