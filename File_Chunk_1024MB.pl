use strict;
use warnings;

open (FH, "<big.txt") or die "Could not open source file. $!";

my $i = 0;

while (1) {
    my $chunk;
    print "process part $i\n";
    open(OUT, ">part$i.log") or die "Could not open destination file";
    $i ++;
    if (!eof(FH)) {
    	#read FILEHANDLE,SCALAR,LENGTH,OFFSET
        read(FH, $chunk, 1024);
        print OUT $chunk;
    } 
    if (!eof(FH)) {
        $chunk = <FH>;
        print OUT $chunk;
    }
    close(OUT);
    last if eof(FH);
}