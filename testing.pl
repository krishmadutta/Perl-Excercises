#Example Seek
#my $filename = "1.txt";
#
#open(my $fh, $filename)  or die "Cannot open file";
#seek ($fh, 10, 0);
#while (<$fh>){
#	print $_;
#}


#TELL curr cursor position


&print_name;

sub print_name{
	my $name = <STDIN>;
    my $last_name =<STDIN>;
    chomp $name;
    chomp $last_name;
	print $name." - ".$last_name;
}