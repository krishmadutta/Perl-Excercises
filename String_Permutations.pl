my %hashNew = ("1" => "USA", "2" => "INDIA"); #declaring a hash
my %hashNew1 = ("1" => "USA", "2" => "CANADA"); #declaring a hash
my $ref = \%hashNew; #taking reference to hash




print $$ref{2};
print $hashNew{2};
