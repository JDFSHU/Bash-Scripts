#!/bin/bash

# Functions like python end with brackets() the contents of the function are placed inside curly braces {}
# Use functions anytime you have repeating code
function() {
    if [ $? -ne 0 ]
    then
        echo "An error has occured, please check the $errorlog file"
    fi
}