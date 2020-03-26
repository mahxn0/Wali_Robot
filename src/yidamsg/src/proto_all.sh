#!/bin/sh
for file in ./*.proto
    do
        echo $file
        protoc --cpp_out=../../adapter/include/proto/    $file
        protoc --python_out=../../adapter/script/proto/  $file
    done
