#!/bin/bash

# Path to a dictionary file (e.g., /usr/share/dict/words on Linux)
DICTIONARY_FILE="../data/dictionary"

# Number of leading zeros required
LEADING_ZEROS="0000"

echo "Searching for SHA256 hash with four leading zeros..."

# Loop through each word in the dictionary
while IFS= read -r word || [[ -n "$word" ]]; do
  nonce=0
  while true; do
    input_string="${nonce}${word}"

    hash=$(echo -n "$input_string" | sha256sum | awk '{print $1}')

    # Check if the hash starts with the required leading zeros
    if [[ "$hash" == "${LEADING_ZEROS}"* ]]; then
      echo "Found!"
      echo "Nonce: $nonce"
      echo "Word: $word"
      echo "Input String: $input_string"
      echo "SHA256 Hash: $hash"
      exit 0 
    fi

    ((nonce++))

  done
done"