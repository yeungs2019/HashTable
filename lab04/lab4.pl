/* Student Name:  Steven Yeung
* Program Name:  Perl Hash Table
* Creation Date:  March 16, 2020
* Last Modified Date:  March 23, 2020
* CSCI Course:  CSCI 301
* Grade Received:  100
* Design Comments: Coded in Perl using Vim as text editior.  ./lab04.pl to run
*/
#!/usr/bin/perl 

use strict;
use warnings;

#input

my $filename = 'scores.txt';

#outputs
my $hashfile = 'hash.txt';
my $averagefile = 'average.txt';
my $winnerfile = 'winner.txt';
my $sortedfile = 'sorted.txt';

# This is reading in the file
open(my $fh, '<', $filename) or die $!;

my $people = "";
my $bowlingscore = 0;

# hash variable to store the data
my %actualhash;

while(my $data = <$fh>){
    # The chomp prevents the end single quote from going to the next line.
    chomp $data;
    # Makes the program produce actual data.  Without this, there is no names and no numbers
    ($people, $bowlingscore) = split / /, $data;
    # hash variable made
    $actualhash{$people} = $bowlingscore;
}

# write to the hash file
open(my $fh, '>', $hashfile) or die "Could not open file '$hashfile' $!";
for my $temphash (keys %actualhash){
    print $fh "Your name is '$temphash' and you're bowling score is '$actualhash{$temphash}'\n";
}
close($fh);

# This is finding the average of the scores
my $bowlscoretotal = 0;
my $theamtofscores = 0;
my $average = 0;

for my $temphash (keys %actualhash){
    $bowlscoretotal += $actualhash{$temphash};
    $theamtofscores++;
}
$average = $bowlscoretotal / $theamtofscores;

# write to the average file
open(my $fh, '>', $averagefile) or die "Could not open file '$averagefile' $!";
print $fh "The average score for all players is: $average\n";
close($fh);

# This is finding the winner
open(my $fh, '>', $winnerfile) or die "Could not open '$winnerfile' $!";
my $winnername = "";
my $winnerscore = 0;
for my $temphash (keys %actualhash){
    if ($winnerscore < $actualhash{$temphash}){
        $winnername = $temphash;
        $winnerscore = $actualhash{$temphash};
    }
}
print $fh "The winner is '$winnername' and his/her score is '$winnerscore'";
close ($fh);

# This is the sorting the scores and writing to the file
open(my $fh, '>', $sortedfile) or die "Could not open '$sortedfile' $!";
foreach my $temphash (sort {$actualhash{$a} <=> $actualhash{$b} } keys %actualhash) {
    printf $fh "%-8s %s\n", $temphash, $actualhash{$temphash};
}
close($fh);
