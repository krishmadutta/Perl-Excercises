#!/usr/bin/perl

#
#Exercise 14. Accept a filename as command line argument. Display all
#lines of that file which contain either of the words Men or Lord.
#
#Expected output:
#
#$ ex_14.pl ringfile.txt
#Nine for Mortal Men doomed to die,
#One for the Dark Lord on his dark throne


my $filename ="ringfile.txt";
open(my $fh, $filename)or
	die "cannot open file $!";

while(my $row =<$fh>){
	if  ($row =~/Men/)
	{
		print $row;
	}
	if ($row =~/Lord/)
	{
		print $row
	}
	
}


