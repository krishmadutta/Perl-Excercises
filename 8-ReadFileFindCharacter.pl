#!/usr/bin/perl

use strict;
use warnings;

#TODO REVIEW !!!!

#Exercise 8. Accept a filename as command line argument. Display all
#lines of that file which contain the character .
#
#Expected output:
#
#$ ex_08.pl ringfile.txt
#In the Land of Mordor where the Shadows lie.
#In the Land of Mordor where the Shadows lie.

my $filename = "ringfile.txt";

open(my $fh, $filename)
	or die "Cannot Open file $!";

while (my $row= <$fh>)
{

	my $lastChar = substr $row, -1;
	if ( $lastChar eq '.'){
			print "--".$row."\n"	;
		print $row;
		print "\n";
	}
}
