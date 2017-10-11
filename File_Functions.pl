$filename = "test.cpp";

open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";

print $fh "\nTestinging";

#while (defined ($row =<$fh>)){
#	print $row;
#}

#while (<$fh>){
#	print $_;
#}

#@list = <$fh>;

close $fh;
#unlink, tell, Rwind, Seek	

#use split and 


