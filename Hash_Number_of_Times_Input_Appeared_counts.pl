#Write a program that reads a series of words (with one word per line)
#until end-of-input, then prints a summary of how many times each word was seen.
#So, if the input words were fred, barney, fred, dino, wilma, fred (all on separate lines), 
#the output should tell us that fred was seen 3 times. 
my(@words, %count, $word);


while (<STDIN>) {
  chomp($_);
  last if ($_ eq '');
  push(@words, $_);
}


foreach  $word (@words){
	$count {$word} += 1;	
}

foreach $word (sort { $count{$a} <=> $count{$b} } keys %count){  #based on values
	 #sort {lc $a cmp lc $b}  Alphabetic sort default is ASCII
	 #sort {$a <=> $b}  for decimal
	print "$word has been seen $count{$word} times.\n";
}







