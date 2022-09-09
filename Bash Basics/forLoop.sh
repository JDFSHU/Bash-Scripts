#!/bin/bash

for n in {1..10} # for n(variable) in {1..10}(range 1 - 10)
do
    echo "$n" # print variable n
    sleep 0.1
done
echo "This is outside of the forloop"



for file in logfiles/*.log # any file in the logfiles directory that ends in .log the * star represents anything. *.log = anything.log
do 
    tar -czvf $file.tar.gz -P $file # tar -create -zip -verbose(see what its doing) -file(archive) -P = absolute-names 
done
echo "Files zipped and stored"

# checking for odd numbers in a range
for n in {1..99}
do
    rem=$(($n % 2)) # initialisng a variable to the remainder of n % 2
    if [ $rem -ne "0" ] # if the remainder isnt equal (not equal) to 0 
    then 
        echo "$n" # then print n
    fi
done

# The above forloop can be simplified as
for odd in {1..99..2}; do echo "${odd}"; done
