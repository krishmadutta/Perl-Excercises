#!/usr/bin/perl

#Start a new stack when stack size is 10
#Create a stack with 10 items



@numOfStacks =();

sub pushItem{
	
	foreach $item (@_)
	{
			if (scalar @currStack == 10)
				{
					push @numOfStacks, @currStack;
					@currStack = ();
				}
			else{
					push(@currStack,$item )
				}	
	}
	
	
}
sub popItems{
	$count = shift @_;
	for ($i=0; $i<=$count;$i++)
	{
		pop (@currStack);				
	}
	
}
pushItem(101,102,103,104,105,106,107,111,112..118,140,150,190,191);


print "\nValues CurrStack: ".scalar @currStack;
foreach(@currStack){
	print "\n".$_;
}

# POP 5 Items
popItems(5);
print "\nAfter Pop Length: ".scalar @currStack;
foreach(@currStack){
	print "\n".$_;
}
pushItem(1001..1150);
print "\nValues NumStack Length: ".scalar @numOfStacks;
foreach(@numOfStacks){
	print "\n".$_;
}
