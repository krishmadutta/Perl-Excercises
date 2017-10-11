use Data::Dumper qw(Dumper);

#Find all unique pairs of element in an array that sum to S. 
#For ex. If array = {2,4,6,4,6} and S = 8 then answer is {(2,6), (4,4)}

my $s = 8;
my @array = {2,4,6,4,6,9};
my %hash = ();
for ($i =0; $i <= scalar @array; $i ++){
	$hash{$i} = $array[$i]; 
}
print Dumper \%hash;




