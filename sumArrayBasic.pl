#!/usr/bin/perl

sub simpleArraySum {
my ($len, @arr) = ($n,@ar);
my $sum = 0;
for(@arr)
    {
        
        $sum +=$_;

    }
   return $sum;
}

$n = <STDIN>;
chomp $n;
$ar_temp = <STDIN>;
@ar = split / /,$ar_temp;
chomp @ar;
$result = simpleArraySum($n, @ar);
print "$result\n";

