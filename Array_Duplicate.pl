# there are many ways to do this in Perl
#lets brainstrom and find what fits the best
my @arrayDuplicate = qw(yes no 1 2 3 4 1 3 no);
my %seen;

foreach my $string(@arrayDuplicate){
	next unless $seen{$string}++;
	print "$string is duplicated. \n";
}

#another way we can do this is using grep
my @arr = ("one", "two", "one", "three", "two");
my %arr_counts;
for (@arr) { $arr_counts{$_}++ };

my @dupes = grep { $arr_counts{$_} > 1 } keys %arr_counts;
print "\n", @dupes, "\n";

#another way is comparing less on memory


#another way is to sort and compare

