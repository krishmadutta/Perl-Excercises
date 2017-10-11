#Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? 
#Find all unique triplets in the array which gives the sum of zero.

 my @S = (-1, 0, 1, 2, -1, -4);
 
 #find 3 elements where S = 0
 
my @result;
 
 my @storted_s = sort @S;
 
 # -4,-1, -1, 0, 1, 2
# (-1,0,1) (-1,-1,2)
 
 # can i remove duplicates from the array?
 #-4, -1, 0 , 1, 2 - Not possibility
 
 #get the first number(S) and find 2 other pairs whose sum = S, 
 
 
 #O(N)
 foreach my $count(@sorted_s){
 	#count = -4
 	#iterate next till end of array
 	
 }
 
  
 