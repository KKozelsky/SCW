#!/bin/bash 
#path to bash shell

#Script outputs the highest life Expectancy for Mexico
#usage statement:
#Usage: ./Myscrpt3.sh x > y
#change Mexico.txt to input and assign the value Mexico.txt to it

#define an input variable
x=$1
#$1 is a special variable that accepts value from the command line. IE, first thing you type is the x

cut -f1,3,4 $x|sort -nk3|tail -1 