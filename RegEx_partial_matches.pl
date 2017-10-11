#string = ['banana']
#@matches [ana, an, ba, bana, is, this, anab]
my $searchString ="Banana";

my @matches = qw (banana ana  an  ba  bana  is  this  anab);

for my $i (@matches){
#print $i,"\n";

if ($searchString =~m/$i/i){
	print "$searchString matches $i","\n";
}else{
	#check for partial match
}
	
}