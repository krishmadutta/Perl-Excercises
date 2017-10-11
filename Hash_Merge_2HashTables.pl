use Data::Dumper;

my $options_saved =  {  'location_setting' => [ '409' ], 'status' => [ '501' ] };

my $options = {  'status' => [ '137', '124' ], 'location_setting' => [], 'classification' => ['0']}; 

my %combined_options = ();
my $combined_options = \%combined_options;

foreach my $options_savedkey (keys %{$options_saved}) {
    push @{$combined_options{$options_savedkey}}, @{${$options_saved}{$options_savedkey}};
}
foreach my $optionskey (keys %{$options}) {
    push @{$combined_options{$optionskey}}, @{${$options}{$optionskey}};
}

$options = $combined_options;
print Dumper $options;
