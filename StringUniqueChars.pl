
unique_str("krishmma");

sub unique_str{
	my $stringInput = shift;
	my @arr_chars;
	
	for my $c (split //, $stringInput) {
		for my $item(@arr_chars){
			print "dd".$c;
			print $item;
			if($c eq $item ){
					print "Not Unique";
			}else{
				push $c, @arr_chars;
			}
		} 
			
		}
		
}