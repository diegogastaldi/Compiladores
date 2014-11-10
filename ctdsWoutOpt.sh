#!/bin/bash




file=$1

java compiler2014.MainWithoutOp $file  
gcc -o ${file%%.*} $file".s" $2

exit 0