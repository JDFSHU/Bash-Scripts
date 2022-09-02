#! /bin/bash 

# Bash math functions
# To perform a math's function/expression you must use "expr", this tells the interpreter to evaluate an expression:
expr 30 + 10 # = 40
expr 30 - 10 # = 20
expr 30 / 10 # = 3

# to perform multiplication we need to use the escape character \ before the asterisk * as the asterisk is used as a wildcard in bash
expr 30 \* 10 # = 300

# We can also create variables and use them with maths functions
mynum1=100 # creation of variables containing numbers
mynum2=200
expr $mynum1 + $mynum2 # adding two variables 
expr $mynum1 + $mnnum2 + 50 # adding variables with numbers