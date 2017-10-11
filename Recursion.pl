
my @arr = (1..10);

my $findItem =<STDIN>;

my $found ;
$found = findItemRecursive($findItem,1);
if ($found ==1){
	print "Found the element within Array";
}else{
	print "Element not found within Array";
}

sub findItemRecursive{
	my ($item, $index) = @_;
	
	if ($index > scalar @arr){
		return 0;
		exit;
	}
	if($arr[$index]==$item){
		return 1;
		exit;
	}
	
	findItemRecursive($item, $index+1);
}
