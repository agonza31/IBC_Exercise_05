# Usage: bash sortgendexp.sh

#Display wages.csv; get rid of the first line; get the Column1(gender)and Column2(yearsExperience); rows should be sorted first by gender and then by yearsExperience; convert "," to " "; store the output into genderexp.txt. ; removes duplicate rows
cat wages.csv | grep -v "gen" | cut -d, -f1-2 | sort -t, -k1,1 -k2,2n | tr ',' ' ' | uniq > genderexp.txt
