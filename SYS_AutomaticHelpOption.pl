#!/usr/bin/perl

#Most good Perl scripts use the Plain Old Documentation (POD) feature of Perl 
#to describe themselves. This module intercepts the --help on the 
#command line and then prints out the POD for the program being run

use strict;
use warnings;

INIT {
   if (($#ARGV == 0) && ($ARGV[0] eq "--help")) {
       system("perldoc $0");
       exit (0);
   }
}

1;