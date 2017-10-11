use strict;
use warnings;
use Data::Dumper;

#print "Enter number of elements within phonebook: ";
my $num_elements = <STDIN>;
my %directory_info = ();
my $record;

for my $count   (1..$num_elements ){
	
	#print "Please Enter username and Phone";
	$record = <STDIN>;
	chomp  $record;
	
	my($name, $phone) = split ' ',$record;
	$directory_info{$name}=$phone;
	
}
#print "Enter the item to search : ";

while (my $locate_item = <STDIN>) {
chomp $locate_item;
last if $locate_item eq '';
if (exists  ($directory_info{$locate_item}))
{
	print "$locate_item=$directory_info{$locate_item}";
}else{
		print "Not found";
}
print "\n";
}