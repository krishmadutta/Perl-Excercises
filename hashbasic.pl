#Write a program that will ask the user for a given name and report the corresponding family name.
use Data::Dumper;

my %names = qw{fred flinstone barney rubble};

my %last_name = (  # a hash may be a lexical variable
  'fred'   => 'flintstone',
  'dino'   => 'sors',
  'barney' => 'rubble',
  'betty'  => 'rubble',
);
delete ($last_name{'flintstone'});


my @k = keys %last_name;
my @v = values %last_name;
##################################
my $count = keys %last_name;




print Dumper \%last_name;
#################################DELETE>

print Dumper \@k;
print "\n";
print Dumper \@v;
print "\n";
###########################################
print "Enter Name to search:","\n";
$get_name = <STDIN>;
chomp($get_name);

if ( $names{$get_name}){
	print $names{$get_name};
}else{
	print "Name is not in hash";
}