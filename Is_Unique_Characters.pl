#If string is unique chars
# no additional data structures

my $string= "kriss";

my $var  = isUniqueCharcters($string);
if($var eq 1){
	print "$string is Unique"
}else{
	print "$string is Not UQ";
}


sub isUniqueCharcters{
	
	my ($str) = @_;
	
	
	if(length($str)> 128){
		return 0;
	}
	
	my @array;
	
	for(my $i = 0; $i <length($str); $i ++){
	
		my $temp = substr($str, $i, 1);
		if ( grep( /^$temp$/, @array ) ) {
			  return 0;
		}else
		{
			push @array,$temp;
		}
			
		
	} 
	return 1;
}

# Processing a String One Character at a Time
#@array = split(//, $string);
#@array = unpack("C*", $string);
