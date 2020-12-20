
# Base URL
base_url="https://adventofcode.com/2020/day/"


# Select the day
read -p "Enter the day you want to read : " day

# URL for the requested day
url=$base_url$day
echo $url

# Temp file
tmp_file="adventOfCode"$day".tmp"

# File
file="adventOfCode"$day".txt"

# Page
wget $url -q -O - > $tmp_file

# Check file
egrep "\<article\>" -A100 $tmp_file > $file

explorer $file

