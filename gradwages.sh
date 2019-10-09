# Usage: gradwages.sh 12 16

#The minimum wages of 12 years
cat wages.csv | cut -d , -f 3,4 | grep  "$1," | sort -n -k 2 -t , | head -n 1 | cut -d , -f 2


#The minimum wages of 16 years
cat wages.csv | cut -d , -f 3,4 | grep  "$2," | sort -n -k 2 -t , | head -n 1 | cut -d , -f 2

#The effect of graduating college ($1 vs. $2 years of school) of minimum wage for earners in this dataset

#echo "$val1 - $val2" | bc????? there is an error for this argument
