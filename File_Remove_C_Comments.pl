# How to use perl to write a script to deal with the comments in a C++ file? 
# Remove the comments
# // or /* */

$filename = "test.cpp";
open (my $fh, $filename )or
	die ("Cannot Open File $!");

$commentblock  = 0;

while(my $line = <$fh>){
	
  if($line =~ s/^\/\/.*$// )
  {
        next;
  }

  elsif ($line =~ /^\/\*.*/)
  {
        $commentblock=1;
        next;
  }
  elsif( $line =~ /.*\*\/$/ && $commentblock)
  {                            
        $commentblock=0;       
        next;
  }
  elsif($commentblock)
  {
        next;
  }

  print $line;
}