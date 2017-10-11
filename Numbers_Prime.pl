


sub prime_finder{

	my $number = @_;
	my $d = 2;
	my $sqrt = sqrt $number;
	
	
	while(1){
		
		
	    if ($number%$d == 0) {
	    	# Number divides by 2 not prime
			return "Not prime";
		}
		if($d < $sqrt){
			$d++;  #??
		}else{
			return "Prime";
		}
		
	}

}	
	

my $number = <STDIN>;
print prime_finder($number);