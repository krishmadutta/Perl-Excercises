
sub findNumber
{
my ($array,$str)=@_;
 for my $i (@$array)
 {
  return True if ($i eq $str)
 }
 return False
}


my @f= (1,2,3,4);
my $k=2;
print findNumber(\@f,$k);

