#!/bin/bash

exit_loop=0 # used to break the while loop 

# ipackage(installPackage) variables, add additional variables for additional packages you want the installer to take care of
ipython=python3
ipip=python3-pip
iat=at
itree=tree
inet=net-tools
iranger=ranger
ihtop=htop

# functions check for commands, some commands aren't identical to the installation name for the packages, hence the extra variables here which will be passed into a seperate function
command_pip=pip3
command_net=ifconfig

# Log files saved to /var/log
error_log=/var/log/jfinstaller_errors.log
install_log=/var/log/jfinstaller.log

# Pretty menu print out, just testing colouration of echo output 
menu_function() {
echo -e '\e[0;32m        _   ______   _                 _             _   _               \e[0m'
echo -e '\e[0;32m       | | |  ____| (_)               | |           | | | |             \e[0m'
echo -e '\e[0;32m       | | | |__     _   _ __    ___  | |_    __ _  | | | |   ___   _ __ \e[0m'
echo -e '\e[0;32m   _   | | |  __|   | | |  _ \  / __| | __|  / _  | | | | |  / _ \ |  __|\e[0m'
echo -e '\e[0;32m  | |__| | | |      | | | | | | \__ \ | |_  | (_| | | | | | |  __/ | |   \e[0m'
echo -e '\e[0;32m   \____/  |_|      |_| |_| |_| |___/  \__|  \__,_| |_| |_|  \___| |_|   \e[0m'
echo -e "\n"
}

# This function checks if a command is already available, if it is it prints that its already installed, if not it installs the relevant package
case_function_one_arg() {
    if command -v $1
    then
        echo -e "\n'$1' already installed\n"
        sleep_function
    else
        echo -e "\nInstalling '$1'\n"
        sudo apt-get install -y $1 >> $install_log 2>> $error_log
        error_function
        echo -e "'$1' installation complete\n"
        echo -e "Installed '$1' on $(date).\n" >> $install_log
        sleep_function
    fi
}

# This second function does the same but uses two arguments incase of differening commands vs package name: pip3 vs python3-pip
case_function_two_arg() {
    if command -v $1
    then
        echo -e "\n'$2' already installed\n"
        sleep_function
    else
        echo -e "\nInstalling '$2'\n"
        sudo apt-get install -y $2 >> $install_log 2>> $error_log
        error_function
        echo -e "'$2' installation complete\n"
        echo -e "Installed '$2' on $(date).\n" >> $install_log
        sleep_function
    fi
}

# if $? exit code isn't 0(successful) tells the user to check the error log file
error_function() {
    if [ $? -ne 0 ]
    then
        echo -e "An error has occured, please check the $error_log file\n"
        sleep 5
    fi
}

# This just pauses the terminal for 1.5 seconds before clearing the screen to create a smooth browsing experience
sleep_function() {
    sleep 1.5
    clear
}

while [ $exit_loop -ne 1 ]
do # extra echo statements can be added here for additional package installations, just increment the number choices and change the exit number e.g 8 = install x 9 = exit
    clear
    menu_function
    echo "1 - Install $ipython"
    echo "2 - Install $ipip"
    echo "3 - Install $iat"
    echo "4 - install $inet"
    echo "5 - install $itree"
    echo "6 - install $iranger"
    echo "7 - install $ihtop"
    echo "8 - Exit"

    read choice; # reading input from the user
    case $choice in # case statements to install packages or advice already installed
        
        1) case_function_one_arg $ipython;; # calling the one argument case function
        2) case_function_two_arg $command_pip $ipip;; # two argument case function, use this if the command checked for isn't the same as the package name IE pip3 vs python3-pip
        3) case_function_one_arg $iat;;
        4) case_function_two_arg $command_net $inet;;
        5) case_function_one_arg $itree;;
        6) case_function_one_arg $iranger;;
        7) case_function_one_arg $ihtop;;
        8) exit_loop=1;;
        *)
        echo -e "\nIncorrect Input\n"
        sleep_function
    esac
done

clear # clears terminal
echo -e "\nThank you for using JFinstaller\n"