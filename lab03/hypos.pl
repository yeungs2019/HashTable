#!/usr/bin/perl 

use strict;
use warnings;

# put your code here :-) 
# declaration of variables
print "Enter some sides of a triangle!\n";
# has the user enter a side of a triangle
print "Enter the opposite side of the triangle: ";
my $opposite = <STDIN>;
chomp $opposite;
# has the user enter a side of a triangle
print "Enter the adjacent side of the triangle: ";
my $adjacent = <STDIN>;
chomp $adjacent;

# outputs the hypotenuse
my $thecombinedsides = (($opposite**2) + ($adjacent**2));
my $hypotenuse = sqrt($thecombinedsides);
printf("The length of the hypotenuse is: %.2f\n", $hypotenuse)

# print "The hypotenuse length is $hypotenuse\n";

