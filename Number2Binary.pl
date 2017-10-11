#241
# 2X10^2 + 4 X 10^1 + 1X10^0
use Data::Dumper;

my $input =524283;
my $result = divideBy2($input);

sub divideBy2{
	my ($number) = @_;
	my $q = 1;
	my $r = 0;
	my $max =0 ;
	my  $counter = 0;
	my @arr;
	
	while($number>= 1){
		
		$r = $number%2;
		$number = $number/2;
		if($r ==1)
		{
			$counter = $counter + 1;
		}else
		{
			
			$counter = 0;
		}
		if($max <=$counter){
				$max = $counter
			}
		
		push  @arr,$r;
		
	}
	
	print Dumper \@arr;
	
		
		print "Max Continous 1's  are: ".$max;
	
		
	
	
	
}