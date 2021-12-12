#!/bin/bash

cnt=0
while read line
do
    cnt=`expr $cnt + 1`
    echo "recieved $line $cnt "
    if test "w" = $line; then 
#      aplay --device=hw:Headphones people-studio-laugh-small1.wav &
      mpg123 -q -g 66 -a hw:Headphones people-studio-laugh-small1.mp3 &
    fi
    if test "8" = $line; then 
#      aplay --device=hw:Headphones people-performance-cheer2.wav &
      mpg123 -q -g 36 -a hw:Headphones people-performance-cheer2.mp3 &
    fi
    if test "o" = $line; then 
#      aplay --device=hw:Headphones nc147274.wav &
      mpg123 -q -g 26 -a hw:Headphones nc147274.mp3 &
    fi

#    cvlc --play-and-exit --no-loop people-studio-laugh-normal1.mp3 &
#    mpg123 -q -g 46 -a hw:Headphones people-studio-laugh-small1.mp3 &
#    mpg123 -q -a hw:Headphones people-studio-ee1.mp3 &
done
