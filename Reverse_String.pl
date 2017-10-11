# Hello There
#There Hello
use Data::Dumper;

my $stringInput = "Hello There";

my @arr_split_string = split / /, $stringInput;
my @result_arr;

for(my $i = scalar @arr_split_string ; $i>= 0; $i--){
	push @result_arr, $arr_split_string[$i];
}
print join '  ' , @result_arr;
