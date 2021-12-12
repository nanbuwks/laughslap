#!/bin/bash

# amixer -c1 sset Headphone $1,$1 unmute
cnt_wwww=0
cnt_8888=0
cnt_oooo=0
while read line
do
    if [[ ${line} =~ wwww ]]; then 
#      aplay --device=hw:Headphones people-studio-laugh-small1.wav &
      case $(( $cnt_wwww % 3 )) in
        "0" ) mpg123 -q -g 200 -a hw:Headphones people-studio-laugh-small1.mp3 & ;;
        "1" ) mpg123 -q -g 200 -a hw:Headphones people-studio-laugh-small2.mp3 & ;;
        "2" ) mpg123 -q -g 50 -a hw:Headphones people-studio-laugh-large3.mp3 & ;;
      esac 
      cnt_wwww=`expr $cnt_wwww + 1`
      echo "recieved $line $cnt_wwww "
    fi
    if [[ ${line} =~ 8888 ]]; then 
#      aplay --device=hw:Headphones people-performance-cheer2.wav &
      case $(( $cnt_8888 % 3 )) in
        "0" ) mpg123 -q -g 95 -a hw:Headphones people-performance-cheer2.mp3 & ;;
        "1" ) mpg123 -q -g 95 -a hw:Headphones nc110917.mp3 & ;;
        "2" ) mpg123 -q -g 95 -a hw:Headphones nc110915.mp3 & ;;
      esac 
      cnt_8888=`expr $cnt_8888 + 1`
      echo "recieved $line $cnt_8888 "
    fi
    if [[ ${line} =~ oooo ]]; then 
#      aplay --device=hw:Headphones nc147274.wav &
      case $(( $cnt_oooo % 3 )) in
        "0" ) mpg123 -q -g 20 -a hw:Headphones nc147274.mp3 & ;;
        "1" ) mpg123 -q -g 20 -a hw:Headphones sassugaa_01.mp3 & ;;
        "2" ) mpg123 -q -g 20 -a hw:Headphones sugoisugoi_01.mp3 & ;;
      esac 
      cnt_oooo=`expr $cnt_oooo + 1`
      echo "recieved $line $cnt_oooo "
    fi

#    cvlc --play-and-exit --no-loop people-studio-laugh-normal1.mp3 &
#    mpg123 -q -g 46 -a hw:Headphones people-studio-laugh-small1.mp3 &
#    mpg123 -q -a hw:Headphones people-studio-ee1.mp3 &
done
