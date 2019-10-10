# Usage: gradwages.sh 12 16

#The minimum wages of 12 years
val1=$(cat wages.csv | cut -d , -f 3,4 | grep  "$1," | sort -n -k 2 -t , | head -n 1 | cut -d , -f 2)
echo -e "The lowest wage earner with $1 years of school earned: \n $val1 \n" 

#The minimum wages of 16 years
val2=$(cat wages.csv | cut -d , -f 3,4 | grep  "$2," | sort -n -k 2 -t , | head -n 1 | cut -d , -f 2)
echo -e "The lowest wage earner with $2 years of school earned: \n $val2 \n" 

#The effect of graduating college ($1 vs. $2 years of school) of minimum wage for earners in this dataset
echo "The difference between these two wages:"
echo "$val1 - $val2" | bc
