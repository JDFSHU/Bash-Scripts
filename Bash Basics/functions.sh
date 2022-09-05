#!/bin/bash

# Functions like python end with brackets() the contents of the function are placed inside curly braces {}
# Use functions anytime you have repeating code
function() {
    if [ $? -ne 0 ]
    then
        echo "An error has occured, please check the $errorlog file"
    fi
}
                                                
menu_func() {

echo  '\e[0;32m        _   ______   _                 _             _   _               \e[0m'
echo  '\e[0;32m       | | |  ____| (_)               | |           | | | |             \e[0m'
echo  '\e[0;32m       | | | |__     _   _ __    ___  | |_    __ _  | | | |   ___   _ __ \e[0m'
echo  '\e[0;32m   _   | | |  __|   | | |  _ \  / __| | __|  / _  | | | | |  / _ \ |  __|\e[0m'
echo  '\e[0;32m  | |__| | | |      | | | | | | \__ \ | |_  | (_| | | | | | |  __/ | |   \e[0m'
echo  '\e[0;32m   \____/  |_|      |_| |_| |_| |___/  \__|  \__,_| |_| |_|  \___| |_|   \e[0m'
}

