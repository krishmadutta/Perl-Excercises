#!/usr/bin/perl
use strict;
use warnings;

#Exercise 2. Accept a string as command line argument. Display the given string in lowercase, with the first letter uppercase
#
#Expected output:
#
#$ ex_02.pl sauron
#Sauron
#
#
#$ ex_02.pl SAURON
#Sauron

my $argument =<STDIN>;
print  uc($argument);
print lc($argument);
print ucfirst($argument);
print lcfirst($argument);