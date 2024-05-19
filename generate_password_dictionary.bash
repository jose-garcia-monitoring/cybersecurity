#!/bin/bash

# This bash script generates offline password dictionaries using crunch.

echo 'Please indicate minimum password characters:'
read MIN_CHARACTERS

echo 'Please indicate maximum password characters:'
read MAX_CHARACTERS

echo 'Please enter the password file name:'
read FILE_NAME

# Generating file with passwords

crunch \
  "$MIN_CHARACTERS" \
  "$MAX_CHARACTERS" \
  /usr/share/crunch/charset.lst numeric \
  -z gzip \
  -o "$FILE_NAME"
