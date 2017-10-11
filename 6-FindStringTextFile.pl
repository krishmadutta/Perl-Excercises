#!/usr/bin/perl
use strict;
use warnings;

#Exercise 6. Accept a filename as command line argument. Display all
#lines of that file which contain word Ring
#
#Expected output:
#
#$ ex_06.pl ringfile.txt
#Three Rings for the Elven-kings under the sky,
#One Ring to rule them all, One Ring to find them,
#One Ring to bring them all and in the darkness bind them

my $filename="ringfile.txt";
open(my $fh, $filename)
	or die "Cannot open file $!";

while(my $row = <$fh>)
{
	if ($row =~/Ring/){
		print $row;
	}
	
}