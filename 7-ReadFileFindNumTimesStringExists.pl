#!/usr/bin/perl
use strict;
use warnings;

#Exercise 7. Accept a filename as command line argument. Display a
#count of how many lines of that file contain word Ring
#
#Expected output:
#
#$ ex_07.pl ringfile.txt
#ringfile.text contains Ring in 3 lines
#$
#
#Additional Exercise 7.1. show "1 line" if given word is found on only one line
#and "x lines" if given word is found on multiple lines (use of s in lines
#only in case of multiple occurances)
my $filename ="ringfile.txt";

open (my $fh, $filename)
	or die "Cannot open file $!";
my $count = 0;
while (my $row = <$fh>)
{
	if ($row =~ /Ring/){
		$count++;
	}
	
	
}
print "$filename contains Ring in ".$count." Lines"