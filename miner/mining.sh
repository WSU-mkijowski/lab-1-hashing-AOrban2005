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
    # Concatenate the word and the nonce
    input_string="${word}${nonce}"

    # Calculate the SHA256 hash
    hash=$(echo -n "$input_string" | sha256sum | awk '{print $1}')

    # Check if the hash starts with the required leading zeros
    if [[ "$hash" == "${LEADING_ZEROS}"* ]]; then
      echo "Found!"
      echo "Word: $word"
      echo "Nonce: $nonce"
      echo "Input String: $input_string"
      echo "SHA256 Hash: $hash"
      exit 0 
    fi

    ((nonce++))

    # Optional: Add a limit to nonce to prevent infinite loops for a single word
    # if [ "$nonce" -gt 100000 ]; then
    #   break
    # fi
  done
done < "$DICTIONARY_FILE"