#!/bin/bash
get-time(){
  date +"%s"
} 
filename="../data/mem_data.dat"
touch  $filename
while :
do
  n=$(free -m | cut -f 29 -d " " |tail -n 2 | head -n  1)
  curr_time=$(get-time)
  output="$n,$curr_time"
  echo $output 
  cat >> $filename <<< $output
  read -t 1 -n 1 key
  if [[ $key = q ]] ; then
    break
  fi
done
