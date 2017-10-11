#cinema iceman
#angel glean
use Data::Dumper;
use sort "_mergesort" ;

my $string1 = ("cinema");
my $string2 = ("iceman");

isAnagram($string1, $string2);

#METHOD 1 USE SORTING
# Use QuickSort for Sorting O(N^2)
# Merge Sort  (nLogn)
sub isAnagram{
	my ($orgStr, $cmpStr) = @_;
	
		if(length($orgStr) ne length($cmpStr))
		{
				print "Not Anagram";
		}
	
		my @orgArray = split //,$orgStr;
		my @cmpArray = split//,$cmpStr;
		
		my @sortedO = sort {lc($a) cmp lc($b)} @orgArray;
		my @sortedC = sort {lc($a) cmp lc($b)} @cmpArray;
		
		$orgStr = join '',@sortedO;
		$cmpStr =join '',@sortedC;
	
		if($orgStr eq $cmpStr){
			print "$orgStr - $cmpStr Anagram It is";
		}else
		{
			print "$orgStr - $cmpStr Nope not an Anagram";
		}

}

#METHOD 1 COUNT CHARACTERS
# Good when numbe of chars in string is small  O(N)

