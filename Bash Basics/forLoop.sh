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