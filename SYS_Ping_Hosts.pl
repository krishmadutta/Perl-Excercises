use Net::Ping;

@hosts = qw(perlmaven.com facebook.com apple.com);
my $p = Net::Ping->new();

foreach $host(@hosts){
	print "\n $host is";
	print " NOT" unless $p->ping($host);
	print " reachable";
}
