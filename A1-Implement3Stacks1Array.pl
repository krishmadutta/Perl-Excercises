#!/usr/bin/perl

# use single array to implement 2 stacks
@arr1 = (1,2,3,4);
@arr2 = qw /A B C D/;
pop(@arr2);
push(@arr1,10);
@array =(@arr1, @arr2);


foreach(@array){
	print $_;
	
}

