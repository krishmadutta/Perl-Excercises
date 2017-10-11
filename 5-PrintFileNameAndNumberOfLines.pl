#!/usr/bin/perl
use strict;
use warnings;

#Exercise 5. Accept a filename as command line argument. Display number of
#lines present in that file along with file name.
#
#Expected output:
#
#$ ex_05.pl ringfile.txt
#ringfile.txt 8

my $filename ="ringfile.txt";
my $count =0;

open(my $fh, $filename) or
	die "Couldnot Open File $!";
	
$count++ while <$fh>;

print "Number of Lines:". $count;