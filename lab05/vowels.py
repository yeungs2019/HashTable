#!/usr/bin/python
import re

# Use a regex to find all words in the words.txt file that contain 
# 3 consecutive vowels and save these words to a file named vowels.txt.

consecvowels = re.compile("(?=[aeiou]{3}$)(?!.*(.).*\1).*$")

for i, line in enumerate(open('words.txt')):
    for match in re.finditer(consecvowels, line):
      print 'Found on line %s: %s' % (i+1, match.group())
      wordfileout = open("vowels.txt", "w+")  
#wordfilein = open ("words.txt",'r')
#wordfileout = open ("vowels.txt", "w+")
#wordfileout = wordfilein.read()
#consecvowels = re.findall("(?=[aeiou]{3}$)(?!.*(.).*\1).*$", wordfileout)






