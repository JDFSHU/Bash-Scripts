#!/bin/bash

exit_loop=0 # used to break the while loop 

# ipackage(installPackage) variables, add additional variables for additional packages you want the installer to take care of
ipython=python3
command_pip=pip3 # pip3 install and command are different, hence two variables
ipip=python3-pip
iat=at
itree=tree
command_net=ifconfig
inet=net-tools
iranger=ranger
ihtop=htop
error_log=/var/log/jfinstaller_errors.log
install_log=/var/log/jfinstaller.log

error_function() {
    if [ $? -ne 0 ]
    then
        echo -e "An error has occured, please check the $error_log file\n"
        sleep 5
    fi
}

menu_function() {

echo -e '\e[0;32m        _   ______   _                 _             _   _               \e[0m'
echo -e '\e[0;32m       | | |  ____| (_)               | |           | | | |             \e[0m'
echo -e '\e[0;32m       | | | |__     _   _ __    ___  | |_    __ _  | | | |   ___   _ __ \e[0m'
echo -e '\e[0;32m   _   | | |  __|   | | |  _ \  / __| | __|  / _  | | | | |  / _ \ |  __|\e[0m'
echo -e '\e[0;32m  | |__| | | |      | | | | | | \__ \ | |_  | (_| | | | | | |  __/ | |   \e[0m'
echo -e '\e[0;32m   \____/  |_|      |_| |_| |_| |___/  \__|  \__,_| |_| |_|  \___| |_|   \e[0m'
echo -e "\n"
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

        1)
        if command -v $ipython
        then
            echo -e "\n'$ipython' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$ipython'\n"
            sudo apt-get install -y $ipython >> $install_log 2>> $error_log
            error_function
            echo -e "\n'$ipython' installation complete\n"
            echo -e "Installed '$ipython' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;

        2)
        if command -v $command_pip
        then
            echo -e "\n'$command_pip' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$command_pip'\n"
            sudo apt-get install -y $ipip >> $install_log 2>> $error_log
            error_function
            echo -e "'$command_pip' installation complete\n"
            echo -e "Installed '$command_pip' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;

        3) 
        if command -v $iat
        then
            echo -e "\n'$iat' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$iat'\n"
            sudo apt-get install -y $iat >> $install_log 2>> $error_log
            error_function
            echo -e "'$iat' installation complete\n"
            echo -e "Installed '$iat' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;

        4) 
        if command -v $command_net
        then
            echo -e "\n'$inet' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$inet'\n"
            sudo apt-get install -y $inet >> $install_log 2>> $error_log
            error_function
            echo -e "'$inet' installation complete\n"
            echo -e "Installed '$inet' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;

        5)
        if command -v $itree
        then
            echo -e "\n'$itree' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$itree'\n"
            sudo apt-get install -y $itree >> $install_log 2>> $error_log
            error_function
            echo -e "'$itree' installation complete\n"
            echo -e "Installed '$itree' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;

        6)
        if command -v $iranger
        then
            echo -e "\n'$iranger' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$iranger'\n"
            sudo apt-get install -y $iranger >> $install_log 2>> $error_log
            error_function
            echo -e "'$iranger' installation complete\n"
            echo -e "Installed '$iranger' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;

        7)
        if command -v $ihtop
        then
            echo -e "\n'$ihtop' already installed\n"
            sleep 1.5
            clear
        else
            echo -e "\nInstalling '$ihtop'\n"
            sudo apt-get install -y $ihtop >> $install_log 2>> $error_log
            error_function
            echo -e "'$ihtop' installation complete\n"
            echo -e "Installed '$ihtop' on $(date).\n" >> $install_log
            sleep 1.5
            clear
        fi
        ;;
        # any extra package installations can be added here, simply copy on of the case statements and create and utilise an ipackage variable
        8) exit_loop=1 ;;

        *) 
        echo -e "\nIncorrect Input\n"
        sleep 1.5
        clear
    esac # closing cases
done # end of while loop

clear # clears terminal
echo -e "\nThank you for using JFinstaller\n"