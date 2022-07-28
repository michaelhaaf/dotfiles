#!/bin/bash
###############
# source: https://blog.cloudflare.com/validating-leaked-passwords-with-k-anonymity/
# I've made some adjustments (regex for number of matches, fixing the sha so it works on ubuntu)
###############

echo -n Password:
read -rs password
echo

echo "Preparing hash from password..." 
hash="$(echo -n "$password" | sha1sum)"
upperCase="$(echo "$hash" | tr 'a-z' 'A-Z')"
prefix="${upperCase:0:5}"
echo "Sending hash prefix ${prefix} to https://api.pwnedpasswords.com/range/..."
response=$(curl -s https://api.pwnedpasswords.com/range/$prefix)
while read -r line; do
	lineOriginal="$prefix$line"
	if [ "${lineOriginal:0:40}" == "${upperCase:0:40}" ]; then
		numBreaches="$(echo "$lineOriginal" | grep -oP ":\d*" | cut -b 2-)"
		echo "Password breached ${numBreaches} times."
		exit 1
	fi
done <<< "$response"
echo "Password not found in breached database."
exit 0

