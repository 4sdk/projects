#!/bin/bash
declare loop_number=5
for ((dir_index = 1; dir_index <= $loop_number; dir_index++)); do
    mkdir "dir$dir_index"
    for ((file_index = 1; file_index <= $loop_number; file_index++)); do
        touch "file$file_index ./dir$dir_index"
        echo $file_index >./dir$dir_index/file$file_index
    done
done
