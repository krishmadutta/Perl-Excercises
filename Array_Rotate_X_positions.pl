#The following code is supposed to rotate the array A by B positions.
#A : [1 2 3 4 5 6]
#B : 1
#[2 3 4 5 6 1]
use Data::Dumper qw(Dumper);

my @array = qw(1 2 3 4 5 6);
my $index = 3;  #Len

# add check index should be less then total length
my $pre = join ",", @array[0..$index - 1];
my $post =  join ",", @array[$index..$#array];

push @rotate_array, split /,/, $post;
push @rotate_array, split /,/, $pre;

print Dumper \@rotate_array;


