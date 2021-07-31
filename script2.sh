#!/bin/bash
counter=0

while [ $counter -lt 9 ]
do
  base64 /dev/urandom | head -c 1000 > random_text_"$counter".txt
  let counter=counter+1;
done
