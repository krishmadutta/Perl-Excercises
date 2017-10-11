use Data::Dumper;

open my $fh1, '<', '1.csv' or die $!;
open my $fh2, '<', '2.csv' or die $!;



my $header1 = <$fh1>;
my $header2 = <$fh2>;

my %app_map;

while(my $row = <$fh1>){
	 my ($name, $leg_len, $diet) = split /\,/, $row;
	 if($leg_len ne ''){
	 	$app_map{$name}{leg_len}=$leg_len;
	 }else{
	 	$app_map{$name}{leg_len}="NA";
	 }
	 
	 
	 if ($diet ne '') {
	 	$app_map{$name}{diet}=$diet;
	 }	else {$app_map{$name}{diet}="NA"; }
	
}
close $fh1 or die $!;

while(my $row = <$fh2>){
	 my ($name, $str_len, $stance) = split /\,/, $row;
	 if($str_len ne ''){
	 $app_map{$name}{str_len}=$str_len;
	 }else {$app_map{$name}{str_len}="NA";}
	 
	 if($stance ne ''){
	 $app_map{$name}{stance}=$stance;	
	 }else {$app_map{$name}{stance}="NA";}
	
}
close $fh2 or die $!;

#list all herbivores 
# List their name and leg_length sorted
#and write them to new csv file

while ( my ($k, $v) = each %app_map ) {
    
    
    	
    	if(defined($app_map{$k}{diet}) && $app_map{$k}{diet} =~/herbivore/){
    		####SORT BY STR_LEN#####################
    		#print $k." - ".$app_map{$k}{str_len},"\n";
    		
    	
    		
    	}
    	
    	
    	
   
}



#print Dumper \%app_map;


