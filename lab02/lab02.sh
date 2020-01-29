#!/bin/bash

Lab 2 Code goes here
# Grep some things!!
echo "Here are the words that have Christmas!"
grep Christmas words.txt
echo -----------------------------------------------------------
echo "Here are words that end with -ing and the amount there is"
grep -c "ing$" words.txt 
echo -----------------------------------------------------------------
echo "Here are words that begin with M and end with e"
grep -E "M.*e$" words.txt | sort
echo -----------------------------------------------------------
echo "Here is the percentage of words that begin with a vowel"
vowel=$(grep -E -i -c ^[aeiou] words.txt)
total=$(grep -E -c $ words.txt)
final=$(echo "scale=4; $vowel/$total" | bc)
finals=$(echo "scale=2; $final*100" | bc)
echo $finals%
