#!/usr/bin/perl
use strict;
use warnings;

#Exercise 12. Accept a string as first argument and a filename as
#second argument. Display all lines of that file which contain the
#given string.
#
#Expected output:
#
#$ ex_12.pl them ringfile.txt
#One Ring to rule them all, One Ring to find them,
#One Ring to bring them all and in the darkness bind them
#$
#
#The first steps of making our own grep command!

my $filename = "ringfile.txt";

open(my $fh, $filename) 
	or die "Cannot open file $!";

my $stringArg = <STDIN>;
chomp($stringArg);

while(my $row=<$fh>)
{
	if ($row =~/$stringArg/){
		print $row
	}
}


