
#!/bin/bash 
#path to bash shell


#Script outputs the highest life Expectancy for Mexico
#usage statement:
#Usage: ./Myscrpt2.sh
#change Mexico.txt to input and assign the value Mexico.txt to it

#define an input variable

x=Data/ByCountry/Mexico.txt
y=Highest_LE_Mexico2.txt

cut -f1,3,4 $x|sort -nk3|tail -1 > $y
cat $y