# aba, refer, lonely tynenol

sub isPalindrome1{
	
	my @arr = @stringArr;
	

	foreach my $i  (@arr){
		
			if (length($i) < 2){
					print "$i Is not a Palindrome","\n";
					next;
			}
			
		$i  =  uc(join('',split(' ',$i)));
		#print $i;
		
		if($i  eq reverse($i))
		{
			print "$i  Is Palindrome","\n";
		}else
		{
			print "$i Is not a Palindrome","\n";
		}
	}
	
	
	
	
}


@stringArr = ("aba",  "refer",  "kite",  "lonely tylenol","wow wow","g", 121, 1232);

 isPalindrome1(\@stringArr);
