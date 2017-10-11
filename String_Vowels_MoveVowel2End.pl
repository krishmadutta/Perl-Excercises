 #if vowel move vowel to the end
use Data::Dumper;
@array = qw(hello apple rose orange umberella rainbow octal);
@new_array = ();
for $word (@array){
	$prefix = substr($word, 0, 1);
	if ($prefix eq 'a' || $prefix eq 'e' || $prefix eq 'i' || $prefix eq 'o' || $prefix eq 'u')
	{
		$postfix = substr($word,1, length $word);
		push(@new_array, join '',$postfix, $prefix);
	} 
}

print Dumper \@new_array;