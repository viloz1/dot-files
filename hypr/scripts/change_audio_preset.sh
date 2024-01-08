#!/bin/bash

PRESETS=$(easyeffects -p | awk -F 'Input' '{print $1}' | cut -d " " -f2- | cut -d " " -f2-)
IFS=',' read -r -a array <<< "$PRESETS"

if [ -z ${CURRENT_INDEX+x} ]; 
  then CURRENT_INDEX=0
fi

CURRENT_INDEX=$(($CURRENT_INDEX+1))


echo $array
echo "${array[2]}"
echo $CURRENT_INDEX



