#!/bin/bash
declare user_days="${1:0:2}"
declare user_mounths="${1:2:2}"
declare current_date=$(date "+%D")
declare current_days=$(echo $current_date | awk -F"/" '{print $2}')
declare current_mounths=$(echo $current_date | awk -F"/" '{print $1}')
if [[ $current_mounths -gt $user_mounths ]]; then
    echo "you allready had a birth day"
elif [[ $current_mounths -eq $user_mounths ]] && [[ $current_days -ge $user_days ]]; then
    echo you allready had a birth day
else
    echo you did not have a birth day yet
fi


