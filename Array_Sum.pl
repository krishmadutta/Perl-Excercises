#Given an array say [0,1,2,3,5,6,7,11,12,14,20] 
#given a number say 5. 
#Now find the sum of elements which sum to 5 
#eg:2+3=5, 0+5=5 etc.

use Data::Dumper;
my @array = (0,1,-2,3,-5,6,-1,7,11,12,14,20);
my $sum = 0;

# if values are more than sum strip them off
@matching = grep{$_ <= $sum}@array;


for ($i =0; $i< $#matching;$i++){
	for($j =0; $j < $#matching;$j++){
		if ($i + $j ==5){
			
				print "$i + $j = $sum\n";
			
		}
		for($k=0; $k < $#matching;$k++){
			if ($i + $j +$k ==5){
				print "$i + $j + $k =$sum \n";
			}
		}
	}
}



