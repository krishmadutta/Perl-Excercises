use JSON;
use Data::Dumper;
  
#$VAR1 = [ '{"damage_description":[""],"last_modified_date_min":[""]}' ];
#$VAR1 =~ s/[()]//g;
#print Dumper $VAR1;
#$DecodeS = decode_json($VAR1);
#
# print Dumper $DecodeS;
 
my $date=`date +%Y_%m_%d`;
chomp($date);
print "$date";



