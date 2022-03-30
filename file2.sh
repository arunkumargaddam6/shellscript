#!/bin/bash
# ram_free=`free -gt | grep Total: | awk '{print $4}'`
ram_free=`free -mt | grep Total: | awk '{print $4}'`
TO="arunkumargaddam6@gmail.com"
if [ $ram_free -le 300 ]
then
   echo "sending email because ram size is less than 300mb"
   echo "subject: warning, RAM free size is low"
   sendmail $TO
else
   echo "RAM free size is normal"
fi