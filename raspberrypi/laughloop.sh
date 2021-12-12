#!/bin/bash

cnt=0
while read line
do
    cnt=`expr $cnt + 1`
    echo "recieved w $cnt "
#    cvlc --play-and-exit --no-loop people-studio-laugh-normal1.mp3 &
    mpg123 -q -g 46 -a hw:Headphones people-studio-laugh-small1.mp3 &
#    mpg123 -q -a hw:Headphones people-studio-ee1.mp3 &
done
