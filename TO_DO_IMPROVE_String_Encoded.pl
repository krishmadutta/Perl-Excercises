 # encoded message
 #input 12  = AB and L
 # are values unique 
 #sequence of numbers (e.g., "23413259802"), how many strings can be generated
 
my  %string_list = (
 				'A'=>1,
 				'B'=>2,
 				'C'=>3,
 				'D'=>4,
 				'E'=>5,
 				'F'=>6,
 				'G'=>7,
 				'H'=>8,
 				'I'=>9,
 				'J'=>10,
 				'K'=>11,
 				'L'=>12,
 				'M'=>13,
 				'N'=>14,
 				'O'=>15,
 				'P'=>16,
 				'Q'=>17,
 				'R'=>18,
 				'S'=>19,
 				'T'=>20,
 				'U'=>21,
 				'V'=>22,
 				'W'=>23,
 				'X'=>24,
 				'Y'=>25,
 				'Z'=>26
 				
 				);
 
 print "Please enter the number 1 - 26: ";
 my $string_input = <STDIN>;
chomp $string_input;
  
 my $len_input = length $string_input;


 if ($string_input <0 || $string_input >26){
 	print "invalid input";
 	exit;
 }
 if ($len_input==1){
 	#access the key
 	
 	my @matching_keys = grep { $string_list{$_} eq $string_input } keys %string_list;
 	print @matching_keys;
 }elsif($len_input==2){
 	# Print associated key 1.
 	my @matching_keys = grep { $string_list{$_} eq $string_input } keys %string_list;
 	print @matching_keys,"\n";
 	# print key that can create the value 
 	my($quot, $rem) = (int $string_input/10, $string_input%10);
 	@matching_keys = grep { $string_list{$_} eq $quot } keys %string_list;
 	print @matching_keys;
 	@matching_keys = grep { $string_list{$_} eq $rem } keys %string_list;
 	print @matching_keys;
 	
 }