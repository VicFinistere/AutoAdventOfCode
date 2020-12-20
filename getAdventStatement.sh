
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

# HTML File
html_file="adventOfCode"$day".html"

# Page
wget $url -q -O - > $tmp_file

# Get the beginning of the article and 100 lines after
egrep "\<article\>" -A100 $tmp_file > $file

# Remove everything after the end of article
sed '1,/<\/article>/!d' $file > $html_file

# Use the content of the html file to store the file
cat $html_file > $file 

# Read the HTML file
explorer $html_file



