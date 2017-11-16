#!/bin/bash

./cpujson.sh $1 &

mpstat -o JSON
#kills the name of the process

pkill cpujson.sh



