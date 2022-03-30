#!/bin/bash
echo "please enter the file name: "
read file

if [ -f $file ]
then
    echo "file exist"
    x=`du -sh $file | awk '{print $1}'`
     filesize=${x%.*}
    echo $filesize
    if [[ $filesize > 15 ]]
    then
        echo "file size exceeded so alert user"
        
    else
        echo "dont worry"
    fi

else
    echo "file does not exist"
fi