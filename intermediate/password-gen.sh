#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <password_length>"
  exit 1
fi

PASSWORD_LENGTH=$1

UPPERCASE=ABCDEFGHIJKLMNOPQRSTUVWXYZ
LOWERCASE=abcdefghijklmnopqrstuvwxyz
NUMBERS=0123456789
SPECIAL_CHARACTERS='!@#$%^&*()_+[]{}<>?'

ALL_CHARACTERS="${UPPERCASE}${LOWERCASE}${NUMBERS}${SPECIAL_CHARACTERS}"

PASSWORD=""
PASSWORD+=$(echo "$UPPERCASE" | fold -w 1 | shuf | head -n 1)
PASSWORD+=$(echo "$LOWERCASE" | fold -w 1 | shuf | head -n 1)
PASSWORD+=$(echo "$NUMBERS" | fold -w 1 | shuf | head -n 1)
PASSWORD+=$(echo "$SPECIAL_CHARACTERS" | fold -w 1 | shuf | head -n 1)

REMAINING_LENGTH=$((PASSWORD_LENGTH - 4))
for ((i = 0; i < REMAINING_LENGTH; i++)); do
  RANDOM_CHAR=$(echo "$ALL_CHARACTERS" | fold -w 1 | shuf | head -n 1)
  PASSWORD+="$RANDOM_CHAR"
done

PASSWORD=$(echo "$PASSWORD" | fold -w 1 | shuf | tr -d '\n')

echo "$PASSWORD"
