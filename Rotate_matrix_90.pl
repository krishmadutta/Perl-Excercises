#Input
 #1  2  3
 #4  5  6
 #7  8  9

#Output:
 #3  6  9 
 #2  5  8 
 #1  4  7 
 
  use strict;
    use Data::Dumper;

    my @matrix = (
       [ qw(ab cd ef gh)],
       [ qw(ij kl mn op)],
       [ qw(qr st uv wx)]
    );

    my @transpose;
    for my $aref (@matrix) {
        my $i = 0;
        push @{$transpose[$i++]}, $_ for @$aref;
    }

    print Dumper(\@matrix);
    print Dumper(\@transpose);