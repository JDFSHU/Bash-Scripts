#!/bin/bash

release_file=/etc/os-release

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file # || = OR
then
    # the host is based on Debian or Ubuntu, run the apt version of the update command
    sudo apt update # checks repository server, catalogues and refreshes local index
    sudo apt dist-upgrade 
fi


if grep -q "Arch" $release_file
then
    # the host is based on Arch Linux, run the pacman update command
    sudo pacman -Syu
fi



# || = OR
# && = AND