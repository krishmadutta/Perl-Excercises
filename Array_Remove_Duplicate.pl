use Data::Dumper;
%seen = ();
%seen_s = ();
my @array  = (1,2,3,4,5,5,6,7,8,9,1,2);
my @array_str = qw(a b c d e a b q);
@unique = grep{! $seen {$_}++}@array;
@unique_str = grep{! $seen_s {$_}++} @array_str;
print Dumper \@unique;
print Dumper \@unique_str;