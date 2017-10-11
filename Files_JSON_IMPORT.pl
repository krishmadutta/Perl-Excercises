use JSON;
use Data::Dumper;

my $filename = "sample.json";
my $data;
my $json_text_data = do {
				open (my $fh, $filename) or die "Cannot open file";
					local $/= undef;
				my $json =JSON->new;
				$data = $json->decode(<$fh>);
				close($fh);
};

#print Dumper $data;
#Accessing JSON    @{$data->{data} } 
for my $item(@{$data->{data}}){
	if( $item->{name} eq 'krishma'){
		print $item->{age};
	}	
}


