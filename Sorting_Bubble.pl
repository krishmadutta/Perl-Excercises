#Bubble Sort in Perl
use Data::Dumper;



#chomp $num_elements;

my @arr_input = (1,12,31,2,21);
#chomp @arr_input;

#compare each element
my $swaps = 0;

for (my $i = $#arr_input; $i>0; $i--){
		for(my $k =0; $k<$i; $k++)
		{
			if($arr_input[$k]>$arr_input[$k+1]){
			
			#perl way (a,b) =(b,a)
			($arr_input[$k],$arr_input[$k+1])=($arr_input[$k+1],$arr_input[$k])	;
			$swaps = $swaps + 1;
		}
	}
	
}

print "Array is sorted in ". $swaps." swaps.\n";
print "First Element: ".$arr_input[0],"\n";
print "Last Element: ".$arr_input[$#arr_input],"\n";

