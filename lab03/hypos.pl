#!/usr/bin/perl 

use strict;
use warnings;

# put your code here :-) 
# declaration of variables
print "Enter some sides of a triangle!\n";
print "Enter a side: ";
my $opposite = <STDIN>;
chomp $opposite;

print "Enter a side: ";
my $adjacent = <STDIN>;
chomp $adjacent;

my $thecombinedsides = (($opposite**2) + ($adjacent**2));
my $hypotenuse = sqrt($thecombinedsides);
printf("The length of the hypotenuse is: %.2f\n", $hypotenuse)

# print "The hypotenuse length is $hypotenuse\n";

