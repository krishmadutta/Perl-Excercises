
use Data::Dumper;

use constant NEXT => 0;
use constant VAL => 1;

my $list = my $tail = undef;
foreach (1..5) 
{    
	my $node = [ undef, $_ * $_ ];   
	 if ( $tail eq undef ) {        
	 	# first one is special - it becomes both the head and the tail        
	 	$list = $tail = $node;   
	 	 } else {      
	 	 	  # subsequent elements are added after the previous tail    
	 	 	      $tail->[NEXT] = $node;     
	 	 	         # and advance the tail pointer to the new tail      
	 	 	           $tail = $node;   
	 	 	            }
}

#print Dumper \$list;

#print "\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n";
#reverse
my $reverse_list ;
$reverse_list  = list_reverse($list);

sub list_reverse{
	my $old = shift;
	my $new  = undef;
	
	while(my $cur = $old){
		$old = $old->[NEXT];
		$cur->[NEXT] = $new;
		$new = $cur;
	}
	
	return $new;
}
#print Dumper \$reverse_list;

# Add new element to the end of list

# Add new element to middle after 49




	

# Delete Element


# $list points to the first element of a list.  Remove that element.
# It must exist or else this code will fail.
#print Dumper $reverse_list;

#$reverse_list = $reverse_list->[NEXT];

# Same operation, but remember the value field of the deleted element.

$reverse_list = $reverse_list->[NEXT];


print Dumper $reverse_list;
print   \$reverse_list->[NEXT];

$reverse_list->[NEXT] = [ $reverse_list->[NEXT], 49 ];

#print Dumper \$reverse_list;

# Search linked list for particular Element