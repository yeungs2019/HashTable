#!/usr/bin/python
import re

# Use a regex to find all words in the words.txt file that contain 
# 3 consecutive vowels and save these words to a file named vowels.txt.

#extra code here for debugging
#consecvowels = re.compile("(?=[aeiou]{3}$)(?!.*(.).*\1).*$")

#for i, line in enumerate(open('words.txt')):
   # for match in re.finditer(consecvowels, line):
     # print 'Found on line %s: %s' % (i+1, match.group())
     # wordfileout = open("vowels.txt", "w+")

#opens the file
wordfilein = open ("words.txt",'r')
#creats the new file
wordfileout = open ("vowels.txt", 'w')
#the variable that sorts out the words with three consecutive vowels
consecvowels = re.findall(r"\w[aeiou]{3}\w*", wordfilein.read())
#produces a file with the consecutive vowels
print>>wordfileout, consecvowels
#closes the file
wordfileout.close()






