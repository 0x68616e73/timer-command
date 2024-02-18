#!/bin/zsh
i=0
echo "Select parametr:\ns-second\nm-minute\nh-hour\nd-day"
read 
sleep_args=$REPLY

echo "Enter a number"
read 
sleeptime=$REPLY


sleep="$sleeptime$sleep_args"
echo "After $sleep, a browser page'll open."

case $sleep_args in

    s)
        sleep $sleep
        xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
        while 
        do 
        
        done
    ;;

    m)
        sleep $sleep
        xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
        exit
    ;;

    h)
        sleep $sleep
        xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
        exit
    ;;

    d)
        sleep $sleep
        xdg-open "https://cdn4.vectorstock.com/i/1000x1000/43/03/finish-stopwatch-icon-clock-and-watch-timer-vector-11524303.jpg"
        exit
    ;;

    *)
        echo -n "Try again :("
        exit
    ;;
esac

exit