use Data::Dumper qw(Dumper);

my %grades;

$grades{'foo'}[0] =23;
$grades{'foo'}[1] = 45;

$grades{'foo1'}[0]=100;
$grades{'foo1'}[1]=50;

#print Dumper %grades;
$grades{'krishma'} =[1000,2000,3000,4000];

#print Dumper \%grades;




my $invoices = {
	customer_1 =>[
	[1,'Food Item1',300.00],
	[2,'Food Item2', 20.00],
	],
	customer_2=>[
	[1,'Food Item1', 40.00],
	[2, 'Food Item2', 20.00],
	],
};

push @{$invoices->{'customer_3'}},[1, 'Food Item1', 40.00];
push @{ $invoices->{customer_3} }, [ 2, 'Food Item10', 799.00 ];

#print Dumper $invoices;


my %india = (
    'National Bird'   => 'Peacock',
    'National Animal' => 'Tiger',
    'National Flower' => 'Lotus',
    'National Fruit'  => 'Mango',
    'National Tree'   => 'Banyan',
    'National Game'   => 'Hockey'
);

my $size = keys %india;

#print "The size of the hash is $size\n";


my %days = (
	'sun' =>'Sunday',
	'mon' => 'Monday',
	'tue' => 'Tuesday',
	'wed' => 'Wednesday',
);

my @weekdays = @days{qw (mon tue wed)};
print "Weekdays: ". join(", ", @weekdays) . "\n";

