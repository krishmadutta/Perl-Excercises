#if file is readable / Size of file ************************************************

my @filenames = qw( 1.csv 2.csv Image1.jpg repeat.txt);

foreach(@filenames){
	print "$_ is readable\n" if -r; 
	my $size = (-s $_)/1024;
	print "$_ size is $size \n"; 
}

# list files are readable, nor writeable , executable or doesn't exist *************

foreach my $file (@filenames) {
  my $attribs = &attributes($file);
  print "'$file' $attribs.\n";
}

sub attributes {
  # report the attributes of a given file
  my $file = shift @_;
  return "does not exist" unless -e $file;

  my @attrib;
  push @attrib, "readable" if -r $file;
  push @attrib, "writable" if -w $file;
  push @attrib, "executable" if -x $file; return "exists" unless @attrib;
  'is ' . join " and ", @attrib;  # return value
}
#what if chmod is 0  -- Shows file exists Only
foreach my $file (@filenames) {
	my $age =  -M $file;
	print "$file ".localtime $age ,"\n";
}


#Oldest file first *****************************************************************
