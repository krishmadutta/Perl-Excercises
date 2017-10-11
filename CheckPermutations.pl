# check if strings are permutation of each other
#god dog

my $string1 = "Godu";
my $string2 ="Dog";

isPermutation($string1, $string2);
#my @palindromes = grep { uc eq reverse uc } @words;
sub isPermutation{
	
		# sorted  =  sorted
		#dgo   = dgo  (Sort O(N) )
		my ($str1, $str2) = @_;
		if(length($str1) ne length($str2)){
			print "Not a Palindrome";
			exit;
		}
		my $sortedString1  = stringSort(uc $str1);
		my $sortedString2  = stringSort(uc $str2);
		
		if ($sortedString1 eq $sortedString2){
			print "Palindrome";
		}else{
			print "Not a Plaindrome";
		}
		
}

sub stringSort{
	
	my ($string2Sort) = @_;
	my @str_arr =  split //, $string2Sort;
	my @sorted_arr = sort { lc($a) cmp lc($b) }  @str_arr;
	#my @sorted_numbers = sort { $a <=> $b } @numbers	
	return join '' ,@sorted_arr;
}
