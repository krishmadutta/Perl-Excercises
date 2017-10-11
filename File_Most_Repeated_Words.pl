use Data::Dumper;

my $filename = "repeat.txt";

open(my $fh, $filename) or die "Cannot open file $!";

my (@words,%word);

#Read file in array
while (my $row = <$fh>){
	
	 push @words, split / / , $row;
	 
}

for (@words){
        s/\W//g;			# Improvements weasley and weasley,
        tr/A-Z/a-z/;
        $word{$_}++;
    }
    


for (sort {$word{$b} <=> $word{$a}} keys %word){
	
	print "$_ : $word{$_} times \n";
}





# loop though keys and find the count