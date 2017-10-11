#!/usr/bin/perl
use strict;
use warnings;

#Exercise 1. In a Perl script, accept command line arguments.
#Display all the arguments and also the number of arguments.

#Expected output:
#$ ex_01.pl this that
#arguments: this that
#Number of arguments: 2

print "Enter Arguments";
my $arguments = <STDIN>;

print $arguments;
my @length = split(" ",$arguments);
print scalar @length;



