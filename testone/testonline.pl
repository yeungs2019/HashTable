#!/usr/bin/perl 

use strict;
use warnings;
use List::Util qw(max);

#input

my $filename = 'testone.txt';

#outputs
my $arrayfile = 'result.txt';
my $largestfile = 'myanswer.txt';

# This is reading in the file
open(my $fh, '<', $filename) or die $!;

my @lines;

while (<$fh>){
    chomp;
    push @lines, split /:/;
}
close $fh;
# chomp @lines;

open(my $fh, '>', $arrayfile) or die "Could not open file '$arrayfile' $!";
for my $line (@lines){
    print $fh "The array contains $line\n";
}
open(my $fh, '>', $largestfile) or die "Could not open file '$largestfile' $!";

for (@lines){
    my $max = max @lines;
    print $fh "The max value is $max\n";
}
close $fh;
