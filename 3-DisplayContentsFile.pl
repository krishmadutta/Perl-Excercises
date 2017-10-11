#!/usr/bin/perl
use strict;
use warnings;

#Exercise 3. Accept a filename as command line argument. Display the
#contents of that file.
#
#Expected output:
#
#$ cat > ringfile.txt
#Three Rings for the Elven-kings under the sky,
#Seven for the Dwarf-lords in their halls of stone

my $filename ="ringfile.txt";

open(my $fh, $filename)
  or die "Could not open file '$filename' $!";
  
while (my $row = <$fh>)
{
	chomp $row;
	print $row;
	print "\n";
}

print "Done";
