#! /bin/bash 
# every bash script should start with this shebang/hashbang, this tells the script which interpreter the script is supposed to use, in this case, bash.

# Variables
myname="Jacob" # example of a variable
myage="30"
userinfo=$(hostnamectl) # example of a sub terminal to grab the output of a command and place into a variable

echo "Hello World!"
echo "my name is myname" # incorrect way of calling variables, this won't work, it will just print myname instead of the contents of the variable
echo "my name is $myname" # correct way of calling variables using the $ sign infront of the variable to tell the interpreter to call the variable
echo "My name is $myname and I am $myage years old."
echo "This is information on my computer:"
echo $userinfo # printing the output of the sub terminals command output




