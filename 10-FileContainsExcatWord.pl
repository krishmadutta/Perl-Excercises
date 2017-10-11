#!/usr/bin/perl
use strict;
use warnings;

#Exercise 10. Accept a filename as command line argument. Display all
#lines of that file which contain the exact word "on" (on should match, whereas stone should not match)
#
#$ ex_10.pl ringfile.txt
#One for the Dark Lord on his dark throne
#$

my $filename ="ringfile.txt";

open (my $fh, $filename)
	or die "Cannot Open File $!";

while (my $row = <$fh>)
{
	if ($row =~ m/\bon\b/)
	{
		print $row;
	}
}