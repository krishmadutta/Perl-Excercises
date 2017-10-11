#!/usr/bin/perl
use strict;
use warnings;


#Exercise 4. Accept a filename as command line argument. Display the
#contents of that file in the opposite order that they appear in the file.
#
#Expected output:
#
#$ ex_04.pl ringfile.txt
#In the Land of Mordor where the Shadows lie.
#One Ring to bring them all and in the darkness bind them
#One Ring to rule them all, One Ring to find them,
#In the Land of Mordor where the Shadows lie.
#One for the Dark Lord on his dark throne
#Nine for Mortal Men doomed to die,
#Seven for the Dwarf-lords in their halls of stone,
#Three Rings for the Elven-kings under the sky,

my $filename = "ringfile.txt";

open(my $fh, $filename) 
	or die "Couldnot open file $!";
# another option is to use TAC command when you open file
my @file = reverse <$fh>;

foreach(@file)
{
	print "$_";

	
}

print "Done";