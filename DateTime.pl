use strict;
use warnings;
use Time::Piece;



sub date_conversion_yyyymmdd{
	my ($f_date) = @_;
	my $incident_date = Time::Piece->strptime($f_date, '%m/%d/%Y');
	return $incident_date->strftime('%Y-%m-%d');
	
}

my $f_incident_data = date_conversion_yyyymmdd('09/12/2017');

print $f_incident_data;
