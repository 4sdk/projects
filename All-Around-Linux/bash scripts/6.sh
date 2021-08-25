#!/bin/bash
function getSeconds() {
    time=$(date "+%T")
    seconds=$(echo $time | awk -F":" '{print $3}')
    echo $seconds
}

declare seconds=$(getSeconds)

declare oddOrEven=$(($seconds % 2))
if [ $oddOrEven -eq 0 ]; then
    echo "even"
else
    echo "odd"
fi
