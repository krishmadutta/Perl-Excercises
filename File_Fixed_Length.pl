#$a = "To be or not to be";
#$b = unpack("x6 A2", $a);  # skip x6, grab A2
#print $b,"\n";
use strict; 
use warnings;

#sub cut2fmt {
#    my(@positions) = @_;
#    my $template   = '';
#    my $lastpos    = 1;
#    foreach $place (@positions) {
#        $template .= "A" . ($place - $lastpos) . " ";
#        $lastpos   = $place;
#    }
#    $template .= "A*";
#    return $template;
#}
use Data::Dumper;
use Text::CSV;
#$fmt = cut2fmt(8, 14, 20, 26, 30);
#print "$fmt\n";

#############3
#---------- end sample log extract ----------
#Write a script which parses /var/log/messages and generates a CSV with two columns: minute, number_of_messages in sorted time order.
#---------- begin sample output ----------
#minute, number_of_messages
#Jan 20 03:25,2
#Jan 20 03:26,2
#Jan 20 03:30,2
#Jan 20 05:03,1
#Jan 20 05:20,1
#Jan 20 05:22,6
#---------- end sample output ------------"""
open(IN, "fixed.txt") or die "cannot open file $!";


my %hash ={};
my @arr;

while(my $row =<IN>){
	
	push @arr, unpack("x0 A12",$row );
	#print unpack("x0 A12",$row ),"\n";
}
$hash{$_}++ for @arr;

# Adding Header

$csv->column_names (qw( minute number));
my $csv = Text::CSV->new ( { binary => 1 } )  # should set binary attribute.
                 or die "Cannot use CSV: ".Text::CSV->error_diag ();

 open my $fh, "<:encoding(utf8)", "test.csv" or die "test.csv: $!";
 

$csv->print ( $fh, $_ ) for sort keys %hash;   # Error's Out
close $fh; 
