#! /bin/bash 

# IF statements
mynum=300 # declaring a variable

if [ $mynum -eq 200 ] # opening an IF statement with IF
then # if true then execute indented code (4 spaces)
    echo "The condition is true."
else # if not true then execute indented code
    echo "The variable is not true."
fi # to close an IF statement use FI (if backwards)

# -eq = equal too
# -ne = not equal
# -gt = greater than
# -lt = less than

# -f checks for a file
# -d checks for a directory

if [ -f ~/myfile ]
then
    echo "The file exists."
else
    echo "The file does not exist."
fi

# checking if a command/resource is installed and running it if it is, installing it and then running it if it isn't
programName=/usr/bin/htop # variable of resource location

if [ -f $programName ] # if -f(file) is in variable location /usr/bin/htop
then # then echo that resource is available 
    echo "$programName is available, lets run it."

else # if resource is not found, echo line stating not available and then running commands
    echo "$programName is not available, installing it."
    sudo apt update && sudo apt install -y htop # updating packages &&(these two & mean "IF the first command was successful, run the second command")installing htop
    # -y means assume yes, don't give confirmation prompt, just install 
fi

$programName

# A better way of doing above IF statement to search for a command

if command -v $programName # removal of brackets(brackets only needed if using test command) command(checks for the existence of a command, in this case $programName = htop)
# command -v is something that we can execute on the command line
then 
    echo "$programName is available, lets run it."
else 
    echo "$programName is not available, installing it."
    sudo apt update && sudo apt install -y htop 
fi
