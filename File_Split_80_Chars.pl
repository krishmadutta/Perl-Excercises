#read file perl program
# split 80 chars
#create new file
# / use this when you split line
# must happen at whitespace
use Data::Dumper;



open(FH, "Array_Duplicate.pl") or die "Could not open file $!";
open(FH2, "> Outputfile.pl");

my @array =<FH>;

#print Dumper \@array;

