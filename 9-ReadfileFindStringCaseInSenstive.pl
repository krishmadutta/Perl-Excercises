#!/usr/bin/perl
use strict;
use warnings;
#Exercise 9. Accept a filename as command line argument. Display all
#lines of that file which contain the word Lord, regardless of the case (Lord, LORD, lord, LorD, and lOrD should all be matched)
#
#Expected output:
#
#$ ex_09.pl ringfile.txt
#Seven for the Dwarf-lords in their halls of stone,
#One for the Dark Lord on his dark throne

my $filename = "ringfile.txt";

open(my $fh, $filename) 
	or die "Cannot Open File $!";

while (my $row = <$fh>){
	
	if (CORE::fc($row) =~ /lord/){
		print $row;
	}
	
}