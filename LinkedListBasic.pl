
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

print Dumper $list;