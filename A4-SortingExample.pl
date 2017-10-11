@array =qw /1011 12 40 101/;
@arrayS =qw /z a q b/;

@sortedArray = sort {$a <=>$b} @array;
@sortedArrayS = sort @arrayS;
print @sortedArray;
print @sortedArrayS;


@n1 = split (/i/,"This is a script");
print "\n"."@n1";

@cpu = ("intel,pentium", "amd, athlon");
foreach $x (@cpu)
{
	($company, $chip)=split(/,/ , $x);
	print "\n".$company." has chip ".$chip;
}

#Arrays to Scalar
# Join string (list);
@intArray =(1..10);

$stringS = join("-" , @intArray);
print $stringS;
