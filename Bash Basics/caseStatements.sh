#!/bin/bash

finished=0 # variable set to 0

while [ $finished -ne 1 ] # if the user chooses to exit the script using option 7, the while loop will evaluate as false, as close the script
do
    echo "What is your favourite Linux Distro?"

    echo "1 - Arch"
    echo "2 - CentOS" 
    echo "3 - Debian"
    echo "4 - Mint"
    echo "5 - Ubuntu"
    echo "6 - Something else?"
    echo "7 - Exit Script"

    read distro; # reading input from user and placing into variable called distro

    # declaring a case statement using the case keyword and then using the variable distro 
    case $distro in
        1) echo "Arch is a rolling release.";; # if the user entered "1" the following is echo'd 1) = what the user entered
        2) echo "CentOS is popular on servers.";; # the end of every case needs to end with double semi colons ;; with the exception of the last case
        3) echo "Debian is a community Distro";;
        4) echo "Mint is popular on desktops and laptops";;
        5) echo "Ubuntu is popular on servers and computers";;
        6) echo "There are many distro's out there";;
        7) finished=1 ;; # variable set to 1, causing the while loop to evaluate as false
        *) echo "You didn't enter an appropriate choice" # if the user entered anything other than the above expected digits, this is printed

    esac # closing case statement using case backwards
done

echo "Thank you for using this script"