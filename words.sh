#!/usr/local/bin/bash
echo -n "Enter file: "
read filename
declare -A counts

while IFS= read -r line; do
    words=($line)
    for word in "${words[@]}"; do
        ((counts[$word]++))
    done
done < "$filename"

maxCount=0
maxWord=""

for word in "${!counts[@]}"; do
    count=${counts[$word]}
    if ((count > maxCount)); then
        maxCount=$count
        maxWord=$word
    fi
done

echo "$maxWord $maxCount"





