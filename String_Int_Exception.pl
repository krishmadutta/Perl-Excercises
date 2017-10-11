#Read a string, , and print its integer value;
# if  cannot be converted to an integer, print Bad String.
# 0 -9 and a-z as inputs

my $input_data = <STDIN>;
chomp $input_data;

if($input_data =~ /^\d+$/){
print $input_data;
}else{
	print "Bad String";
}
