#!/bin/bash
get-time(){
  date +"%s"
} 
filename="../data/mem_data.dat"
if [ -f $filename ] ; then
  rm $filename
fi
touch  $filename
while :
do
  n1=$(free -m | cut -f 29 -d " " |tail -n 2 | head -n  1)
  n2=$(free -m | cut -f 30 -d " " | tail -n  1)
  curr_time=$(get-time)
  output="$n1,$n2,$curr_time"
  echo $output 
  cat >> $filename <<< $output
  read -t 1 -n 1 key
  if [[ $key = q ]] ; then
    break
  fi
done
