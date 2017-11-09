#!/bin/bash

aws ec2 describe-instance-status --instance-id $1 > aws.txt

cnt=`grep enabled aws.txt | wc -1`

if [ $cnt -gt 0 ]; then

echo "Instance is healthy"

else
echo "Instance is not Healthy"

fi



