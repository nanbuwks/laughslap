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
        "0" ) echo 0 ;;
        "1" ) echo 1 ;;
        "2" ) echo 2 ;;
      esac 
      case $(( $cnt_wwww % 3 )) in
        "0" ) mpg123 -q -g 200 -a hw:Headphones people-studio-laugh-small1.mp3 & ;;
        "1" ) mpg123 -q -g 200 -a hw:Headphones people-studio-laugh-small2.mp3 & ;;
        "2" ) mpg123 -q -g 200 -a hw:Headphones people-studio-laugh-large3.mp3 & ;;
      esac 
      cnt_wwww=`expr $cnt_wwww + 1`
      echo "recieved $line $cnt_wwww "
    fi
done
