
#my $user_input =<STDIN>;

#my $string_to_match = "Test";

#
#if($user_input=~/$string_to_match/i)
#{
#	print "found";
#}else{
#	print "not found";
#}
#
##substitute operators
#$user_input =~ s/bird /birds/g;
#
#print $user_input;
#
##Transpose operators
#$user_input =~ tr/b/Z/;
#
#print $user_input;

#$user_input =~ tr/a-z/d/d;

#print $user_input;


my @num = qw (1 2 3 4 5 5 6 6);

$refnum = \@num;

print $$refnum[2],"\n";

print @$refnum[ 0-5 ],"\n";

