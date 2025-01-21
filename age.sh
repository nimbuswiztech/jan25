#!/bin/bash
echo "Please enter filename:"
read fname
echo "Enter the minimum age of employee:"
read n
echo "========================================"
echo "List of Employees whose age is greater than or equal to $n"
echo "========================================"


sed '1d' $fname > temp
found=0

while read line
do
    age=$(echo "$line" | awk -F " " '{print $3}')
    if [ $age -ge $n ]; then
        echo "$line" | awk -F " " '{print $1}'
        found=1
    fi
done < temp


if [ $found -eq 0 ]; then
    echo "No employees found with age greater than or equal to $n."
fi


rm temp
