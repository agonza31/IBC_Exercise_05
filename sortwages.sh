#Usage: bash sortwages.sh

echo "1) the gender, yearsExperience, and wage for the highest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 3 -t , | tail -1

echo "2)the gender, yearsExperience, and wage for the lowest earner:"
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 3 -t , | head -2 | tail -1

echo "3) the number of females in the top ten earners in this data set:"
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 3 -t , | tail -10 | grep -n "female" | wc -l
