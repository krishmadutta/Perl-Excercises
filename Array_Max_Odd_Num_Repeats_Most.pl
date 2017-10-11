# Find the odd number in a list of ints that is repeated the highest number of times. 
use Data::Dumper;
my @arr = (13,12,11,9,11,2,14,11,10,11,13,13,13);

#Find Odd Numbers
#Count for that number that number appears


# for loop iterate over the array O(N))
# add only odd numbers to the hash
# hash table  key (Numbers) + Values(count)    # 9 =>1, 11=>4, 13 =>2
#sort hash table   values  11=>4, 13=>2, 9=>1 O(N)
#print max of the hash 
my %hashResult;

for my $i (@arr){
	
	#odd Check
	if($i%2!=0)
	{
		# Add to hash
		if(exists $hashResult{$i})
		{
			# get the value and add 1 to it and reassign it to hash
			my $temp;
			$temp = $hashResult{$i};
			$hashResult{$i} = $temp + 1;
			
		}else{
			$hashResult{$i} = 1;  #new key
		}
	}
}
# Get the max value within hash 
# There can be more than 1 key that have max values  print any or list both

my @maxVals = sort {$hashResult{$a} <=> $hashResult{$b} } keys %hashResult;


my  $max = $maxVals[-1];
#get the the value
my $maxItem;

$maxItem = $hashResult{$max};
# another for loop to figure ourt all the vals that have values X

#print $maxItem,"\n";

#print Dumper \%hashResult;


