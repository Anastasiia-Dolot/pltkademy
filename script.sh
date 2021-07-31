#!/bin/bash
DATA_DIR=/home/sos/Desktop/1
server1=nginx-01.com
server2=nginx-02.com
counter=0

for f in $(ls -l $DATA_DIR); do
  if [[ $f == *.conf ]]; then 
  if [[ "$counter" -lt 100 ]]; then
  if grep -q "$server1" "$DATA_DIR/$f"; then
  let counter=counter+1;
  sed -i "s/$server1/$server2/" $DATA_DIR/$f;
  fi
  fi
  fi
done