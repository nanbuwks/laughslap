#!/bin/bash

# amixer -c1 sset Headphone $1,$1 unmute
cnt=0
while read line
do
    cnt=`expr $cnt + 1`
    echo "recieved $line $cnt "
    if [[ ${line} =~ wwww ]]; then 
#      aplay --device=hw:Headphones people-studio-laugh-small1.wav &
      mpg123 -q -g 200 -a hw:Headphones people-studio-laugh-small1.mp3 &
    fi
    if [[ ${line} =~ 8888 ]]; then 
#      aplay --device=hw:Headphones people-performance-cheer2.wav &
      mpg123 -q -g 95 -a hw:Headphones people-performance-cheer2.mp3 &
    fi
    if [[ ${line} =~ oooo ]]; then 
#      aplay --device=hw:Headphones nc147274.wav &
      mpg123 -q -g 20 -a hw:Headphones nc147274.mp3 &
    fi

#    cvlc --play-and-exit --no-loop people-studio-laugh-normal1.mp3 &
#    mpg123 -q -g 46 -a hw:Headphones people-studio-laugh-small1.mp3 &
#    mpg123 -q -a hw:Headphones people-studio-ee1.mp3 &
done
