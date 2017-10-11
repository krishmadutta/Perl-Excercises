#6
#riya riya@gmail.com
#julia julia@julia.me
#julia sjulia@gmail.com
#julia julia@gmail.com
#samantha samantha@gmail.com
#tanya tanya@gmail.com
# where name and email are same list sorted

#regex practice
use Data::Dumper;

$N = <STDIN>;
chomp $N;
for my $a0 (0..$N-1){
    $firstName_temp = <STDIN>;
    @firstName_arr = split / /,$firstName_temp;
    $firstName = $firstName_arr[0]; 
    chomp $firstName;
    $emailID = $firstName_arr[1];
    chomp $emailID;
}

print Dumper \@firstName_arr;