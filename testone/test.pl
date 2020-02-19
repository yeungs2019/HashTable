#!/usr/bin/perl 

use strict;
use warnings;

# Welcoming message
print "Welcome to guessing game\n";

# random number generator.
# my $randomnumber = int rand 100;

# prompts the user to enter a number to guess
print "Guess a number between 0 to 100: ";
my $guess = <STDIN>;

# generates a random number for the user to guess
my $randomnumber = int rand 100;

# the user will type this in if they want to quit the game
my $quit = 999;

# while loop to keep running if the user hasn't guessed the magic number
while ($guess != $randomnumber){
    
    if ($guess > $randomnumber){
        print "You guessed too high, ";
        print " guess a lower number than ${guess} or enter '999' to quit: ";
        $guess = <STDIN>; 
    }
    if ($guess < $randomnumber){
        print "You guessed too low, ";
        print " guess a higher number than ${guess} or enter '999' to quit: ";
        $guess = <STDIN>;
    }
    if ($guess == $randomnumber){
        print "You guessed correctly! It was $guess\n";
        last;
    }
    if ($guess == $quit){
        print "Leaving? The number was ${randomnumber}\n";
        last;
    }
}
























































































