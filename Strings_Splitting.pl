use Data::Dumper;

# Problem 1: How to split a string into words



	#1. Using Split Function
	my $str = "Hello my name is Apollo";
	my @arrResult = split /\s+/,$str;
	
	print Dumper @arrResult;
	
	#2. Using RegEx
	my $strx="hi  hello";
	my ($A, $B)=$strx=~/([[:alpha:]]+)/g;
	
	print $A, "\n";
	print $B, "\n";
	
# Problem 2: How to split a string into character array
#using split
my $x='welcome';
my @arr=split (//, $x);
print Dumper "@arr";

#using regex
my @arrx=$x=~/./g;
print Dumper "@arrx";

#using substring function
my @arrS=();
foreach (0..length($x)-1){
        push @arrS, substr($x,$_,1);
}
print "@arrS";