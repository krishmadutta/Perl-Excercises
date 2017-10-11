#Adding 2 elements of an array until every element becomes
#greater than or equal to k
use List::Util qw[min max];
use Data::Dumper;

my @array_data =(1,2,1,2,1,4,6, 10, 2, 5);
my $element_k = 8;

# Add 1, 2   = 3  new array (3,10,5,2,4,11,8)
# Add 3, 2   = 5  new array (5,10,5,4,11,8)
# Add 5, 4   = 9  new array (9,10,5,11,8)
# all the elements are  = 5 or more than 5   / 3

#find 2 min elements within array
my $pass = 0;
my @sorted_data  = sort {$a <=> $b} @array_data;
# O(N)
#print Dumper \@sorted_data;
print "*" x 20;

while($sorted_data[0] <= $element_k){
	#Push element to the array
	my $new_summed_element = $sorted_data[0] + $sorted_data[1];
	shift(@sorted_data);
	shift(@sorted_data);
	
	#unshift pushes to begining of the list
	unshift(@sorted_data, $new_summed_element);
	$pass++;
}
print "\n";
print "Number of iterations", $pass,"\n";
print Dumper \@sorted_data;



