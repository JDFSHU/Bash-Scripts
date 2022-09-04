#!/bin/bash

exit_loop=0

ipython=python3
ipip=pip3
iat=at
itree=tree
inet=net-tools
iranger=ranger
ihtop=htop
error_log=package_errors.log
install_log=package_install.log

error_function() {
    if [ $? -ne 0 ]
    then
        echo "An error has occured, please check the $error_log file"
    fi
}

while [ $exit_loop -ne 1 ]
do
    echo "1 - Install $ipython"
    echo "2 - Install $ipip"
    echo "3 - Install $iat"
    echo "4 - install $inet"
    echo "5 - install $itree"
    echo "6 - install $iranger"
    echo "7 - install $ihtop"
    echo "8 - Exit"

    read choice;
    case $choice in 

        1)
        if command -v $ipython3
        then
            echo "$ipython already installed"
        else
            echo "Installing $ipython"
            sudo apt install -y python3 >> $install_log 2>> $error_log
            error_function
            echo "Installed $ipython on $(date)." >> $install_log
        fi
        ;;

        2) echo "Installing $ipip";;
        3) 
        if command -v $iat
        then
            echo "'$iat' already installed"
        else
            echo "Installing '$iat'"
            sudo apt install -y $iat >> $install_log 2>> $error_log
            error_function
            echo "Installed '$iat' on $(date)." 
        fi
        ;;

        4) echo "Installing $inet";;
        5) echo "Installing $itree";;
        6) echo "Installing $iranger";;
        7) echo "Installing $ihtop";;
        8) exit_loop=1 ;;
        *) echo "Incorrect Input";;
    esac
done