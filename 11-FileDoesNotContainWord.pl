#!/usr/bin/perl
use strict;
use warnings;

#Exercise 11. Accept a filename as command line argument. Display all
#lines of that file which do not contain the word all
#
#Expected output:
#
#$ ex_11.pl ringfile.txt
#Three Rings for the Elven-kings under the sky,
#Nine for Mortal Men doomed to die,
#One for the Dark Lord on his dark throne
#In the Land of Mordor where the Shadows lie.
#In the Land of Mordor where the Shadows lie.
#$

my $filename = "ringfile.txt";
print "Enter String to Search: ";
my $string = <STDIN>;
chomp($string);

open (my $fh, $filename)
	or die "Cannot Open File $!";

while(my $row = <$fh>){
	
	if($row !~ /$string/)
	{
		print $row;
	}
}