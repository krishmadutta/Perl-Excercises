#!/usr/bin/perl
use strict;
use warnings;

#Exrecise 13. Accept a string as first argument and a filename as
#second argument. Display how many times the given string occurs in the file.
#(Note: this is different than Exercise 7)
#
#Expected output:
#
#$ ex_13.pl them ringfile.txt
#ringfile.text contains the 4 times
#$
#
#$ ex_13.pl diamond ringfile.txt
#ringfile.text does not contain diamond
#$
#
#Additional Exercise 13.1. show "1 time" if given word is found only once
#and "x times" if given word is found multiple times (use of s in times
#only in case of multiple occurances

my $filename ="ringfile.txt";

my $stringArg = <STDIN>;
my $count = 0;
chomp ($stringArg);

open(my $fh, $filename) 
	or die "Cannot Open File $!";
while (my $row = <$fh>){
	
	if($row =~/$stringArg/){
		$count = $count + 1;
	}
}

if ($count eq 0)
{
	print $filename."doesnot contain ".$stringArg;
}else{
	print $filename."contains".$stringArg.": ".$count." times";
}

	