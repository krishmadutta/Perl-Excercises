 # encoded message
 #input 12  = AB and L
 # are values unique 
#Input: "1123". You need to general all valid alphabet codes from this string.
#
#Output List
#aabc //a = 1, a = 1, b = 2, c = 3
#kbc // since k is 11, b = 2, c= 3
#alc // a = 1, l = 12, c = 3
#aaw // a= 1, a =1, w= 23
#kw // k = 11, w = 23

use Data::Dumper;

my $number = 1;
foreach('a'..'z'){
	$s{$_} =$number; 
	$number++;
}

print Dumper \%s;