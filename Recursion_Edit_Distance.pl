#Given two strings str1 and str2 and below operations that can performed on str1. 
#Find minimum number of edits (operations) required to convert ‘str1’ into ‘str2’.
#
#Insert
#Remove
#Replace
#Input:   str1 = "geek", str2 = "gesek"
#Output:  1
use List::Util qw( min max );
#factorial
sub fact {
   my ($n, $prod) = @_;
   $prod ||= 1;
   return $prod if $n == 0;
   return fact($n-1, $n*$prod);
}

#print fact(5);


# Edit Distance

sub editDistance{
	
	my($str1, $str2, $len1, $len2) =  @_;
	
	if ($len1 ==0){
		return $len2;
	}
	
	if ($len2 ==0){
		return $len1;
	}
	
	if(substr($str1, -1) eq substr($str2,-1)){
		return editDistance($str1,$str2,$len1-1,$len2-1);
	}
	my @distance = ();
	push @distance, editDistance($str1, $str2, $len1, $len2-1); #insert
	push @distance, editDistance($str1, $str2, $len1-1, $len2); #remove
	push @distance, editDistance($str1, $str2, $len1-1, $len2-1); #replace
	
	my $min =  min @distance;
	
	return 1 + $min;
}

my $str1 ="Sundayyyy";
my $str2 = "Saturday";

print editDistance($str1, $str2, length($str1), length($str2))
