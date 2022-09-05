#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/update.log
errorlog=/var/log/updater_errors.log

error_function() {
    if [ $? -ne 0 ]
    then
        echo "An error has occured, please check the $errorlog file"
    fi
}


if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file # || = OR
then
    # the host is based on Debian or Ubuntu, run the apt version of the update>
    sudo apt update -y >>$logfile 2>>$errorlog && sudo apt dist-upgrade -y >>$logfile 2>>$errorlog
    error_function # called function to echo the error message
    echo "Updated on $(date)" >> $logfile
    echo "" >> $logfile 2>>$error_log
fi


if grep -q "Arch" $release_file
then
    # the host is based on Arch Linux, run the pacman update command
    sudo pacman -Syu >>$logfile 2>>$errorlog
    echo "Updated packages on $(date)" >> $logfile
    echo "" >> $logfile
    error_function
fi


# || = OR
# && = AND


if command -v $ipython3
        then
            echo -e "\n'$ipython3' already installed\n"
        else
            echo -e "\nInstalling '$ipython3'\n"
            sudo apt-get install -y $ipython3 >> $install_log 2>> $error_log
            error_function
            echo -e "\n'$ipython3' installation complete\n"
            echo -e "Installed '$ipython3' on $(date).\n" >> $install_log
        fi
        ;;