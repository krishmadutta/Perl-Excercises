#Anagram or not

sub anagramCheck{
	$stringA =$_[0];
	$stringB = $_[1];
	if (length $stringA eq length $stringB)
	{
		#Split String into list of Chars, sorting, joining the list of chars 
		
		$sortedA = join "",sort split //,$stringA;
		$sortedB = join "",sort split //,$stringB;
		
		if(lc $sortedA eq  lc $sortedB)
		{
			print "\n$stringA and $stringB - Words are Anagram";
		}else{
			print "\n$stringA and $stringB -Words are NOT Anagram";
		}
	}else{
		print "\n$stringA and $stringB -Words are NOT Anagram";
	}
}

#TestCases
anagramCheck("Angel","glena");
anagramCheck("Angel","ang");
anagramCheck("test","east");
anagramCheck("timis","simit");