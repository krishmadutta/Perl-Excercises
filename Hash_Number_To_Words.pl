
%single_digit = (   1=>'one', 
					2=>'two',
					3=>'three',
					4=>'four',
					5=>'five',
					6=>'six',
					7=>'seven',
					8=>'eight',
					9=>'nine'
					
				);
%double_digit = (   
					
					11=>'eleven', 
					12=>'twelve',
					13=>'thirteen',
					14=>'fourteen',
					15=>'fiveteen',
					16=>'sixteen',
					17=>'seventeen',
					18=>'eighteen',
					19=>'nineteen'
					
				);

%multiples_tens = (
				10=>'ten',
				20=>'twenty',
				30=>'thirty',
				40=>'fourty',
				50=>'fifty',
				60=>'sixty',
				70=>'seventy',
				80=>'eighty',
				90=>'ninety'
				);
				
print "Enter the number: ";
$number = <STDIN>;
chomp $number;
$length_input =  length $number;

if ($length_input ==1){
	# its a one digit number
	print  $single_digit{$number};
}elsif($length_input ==2)
{
	# its a two digit number
	
	
	#case 1:  10 - 19
	if(exists $double_digit{$number} ){
		print $double_digit{$number};
	}else{
		
		#print "its between 20-99","\n";
		
		#if its divde by 10 then its in 10's hashtable
		if($number%10==0){
			print $multiples_tens{$number};
		}else{
			 #find 10's position and unit's position
		
			my ($quot, $rem) = (int $number/10, $number%10);
			
			print   $multiples_tens{$quot*10}." ".$single_digit{$rem};
		}
	}
	
	

	
	
}else{
	print "Not sufficient data";
}


# find the number within hash and list associated Value


