
#!/bin/bash 
#path to bash shell

cut -f1,3,4 Data/ByCountry/Mexico.txt|sort -nk3|tail -1 > Highest_LE_Mexico.txt
#Script outputs the highest life Expectancy for Mexico
#usage statement:
#Usage: ./Myscrpt1.sh
#change Mexico.txt to input and assign the value Mexico.txt to it