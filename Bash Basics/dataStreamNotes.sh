#!/bin/bash

# Types of datastream output
# 1. Standard Output(everything that is printed to the screen that is NOT an error) designated by a 1 *standard output is implied so you don't have to specify a 1 
# 2. Standard Error(every error that is printed to the screen) designated by a 2
# 3. Standard Input(reading input from the user using read)

find /etc -type f > /dev/null or find /etc -type f 1> /dev/null # redirect all standard output to blackhole 
find /etc -type f 2> /dev/null # redirect all standard errors to blackhole
find /etc -type f > file.txt # redirects to a file
find /etc -type f &> file.txt # redirects both standard output/error to file
find /etc -type f > find_results.txt 2> find_errors.txt # redirects standard output to one file and standard error to a different file

read =myname # Standard input
echo "Please enter your name: "
echo "Your name is $myname"