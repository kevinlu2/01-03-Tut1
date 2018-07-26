#!where bash

echo frequency table
cat _unix-test.txt |
tr -cs A-Za-z '\n' |
awk 'NF' |
tr a-z A-Z |
gsort |
uniq -c |
gsort -k1rn -k2 |
head -3
#sed 3q

read -p "Press enter to continue"

echo -e "\n... cat text"
cat _unix-test.txt
read -p "Press enter to continue"

echo -e "\n... tr remove all but letters"
cat _unix-test.txt | tr -cs A-Za-z '\n'
read -p "Press enter to continue"

echo -e "\n... awk remove empty"
cat _unix-test.txt | tr -cs A-Za-z '\n' | awk 'NF'
read -p "Press enter to continue"

echo -e "\n... tr to uppercase"
cat _unix-test.txt | tr -cs A-Za-z '\n' | awk 'NF' | tr a-z A-Z
read -p "Press enter to continue"

echo -e "\n... sort"
cat _unix-test.txt | tr -cs A-Za-z '\n' | awk 'NF' | tr a-z A-Z | gsort
read -p "Press enter to continue"

echo -e "\n... uniq count"
cat _unix-test.txt | tr -cs A-Za-z '\n' | awk 'NF' | tr a-z A-Z | gsort | uniq -c
read -p "Press enter to continue"

echo -e "\n... sort 1 2"
cat _unix-test.txt | tr -cs A-Za-z '\n' | awk 'NF' | tr a-z A-Z | gsort | uniq -c | gsort -k1rn -k2
read -p "Press enter to continue"

echo -e "\n... take"
cat _unix-test.txt | tr -cs A-Za-z '\n' | awk 'NF' | tr a-z A-Z | gsort | uniq -c | gsort -k1rn -k2 | sed 20q
read -p "Press enter to continue"
