use List::Util qw[min max];

my @Inputarr = (9,2,-12,22,2);
my $large_sum;
$large_sum = large_cont_sum(@Inputarr);
print $large_sum;

sub large_cont_sum{
	my @arr = @_;
	
	my $curr_sum=0;
	my $max_sum=0;
	
	
		foreach $i (@arr){
			$curr_sum = max($curr_sum + $i, $i);
			$max_sum = max($curr_sum, $max_sum);
			
		}
		return $max_sum;
	
}

