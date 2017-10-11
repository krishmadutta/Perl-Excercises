#!/usr/bin/perl

use bignum;

sub aVeryBigSum {
   my ($len, @arr) = ($n, @ar);
   my $sum = 0;

   for(@arr)
   {
	   	print $_,"\n";
   
   }
   
   return $sum;
}

$n = <STDIN>;
chomp $n;
$ar_temp = <STDIN>;
@ar = split / /,$ar_temp;
chomp @ar;
$result = aVeryBigSum($n, @ar);
print "$result\n";