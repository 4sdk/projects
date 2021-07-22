#!/bin/bash
du -ahb --max-depth=1 $1 | while IFS= read -r line
do
  declare size=$(echo $line | awk '{print $1}')
        if [ $size -lt 10 ]; then
        rm $(echo $line | awk '{print $2}')
fi
done
