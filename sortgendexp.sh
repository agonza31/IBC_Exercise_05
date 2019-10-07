# Usage: sortgendexp.sh
cat wages.csv | grep -v "gen" | cut -d, -f1-2 | sort -t, -k1,1 -k2,2n | tr ',' ' ' > genderexp.txt
