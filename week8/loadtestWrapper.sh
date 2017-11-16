#!/bin/bash

./loadtest $1 &
# the & is to background the loadtest
# process and detach it from the shell
# fg will return the backgrounded process to the foreground

#mpstat $2

sleep $2

#kills the name of the process

pkill loadtest



