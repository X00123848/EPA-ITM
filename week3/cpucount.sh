#!/bin/bash
#searching for the word processor in cpuinfo
#feed the output of grep into another command, which counts the number of lines
# wc -l counts the number of lines in its input
#cnt is assigned the output of grep processor /proc/cpuinfo | wc -l 
#must include punctuation or command will not run 

cnt=`grep processor /proc/cpuinfo | wc -l`
# if the cnt variable is less than or equal to 2
if [ $cnt -lt $1 ]; then

  echo "Not enough CPUS, exiting"
else
  echo "Enough CPUS"

fi
#closes if statement



