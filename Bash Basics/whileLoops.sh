#!/bin/bash

var=1
while [ $var -le 10 ] # while test condition is true 
do # do something
    echo $var
    var=$(( $var +1 ))
    sleep 0.5
done # something is done, use done to close the loop

# -le = less than or equal too
