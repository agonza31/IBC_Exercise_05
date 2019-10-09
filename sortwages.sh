#Usage: bash sortwages.sh

echo "1) the gender, yearsExperience, and wage for the highest earner:"

#Display wages.csv; get the Column1(gender), Column 2(yearsExperience), and Column 4(wage); According to wage column sort the data from small to large; output the last line which should be the one with highest wage. 
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 3 -t , | tail -1

echo "2)the gender, yearsExperience, and wage for the lowest earner:"

#Display wages.csv; get the Column1(gender), Column 2(yearsExperience), and Column 4(wage); According to wage column sort the data from small to large; output the second line which should be the one with lowest wage.
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 3 -t , | head -2 | tail -1

echo "3) the number of females in the top ten earners in this data set:"
#Display wages.csv; get the Column1(gender), Column 2(yearsExperience), and Column 4(wage); According to wage column sort the data from small to large; outout the last ten lines which should be the ones with top ten wages; find the lines that have "female"; count the lines.
cat wages.csv | cut -d , -f 1,2,4 | sort -n -k 3 -t , | tail -10 | grep -n "female" | wc -l
