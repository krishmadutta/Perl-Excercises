#!/usr/bin/perl

#Learning push and pop Operations

@array = 1..5;

#POP OPERATION
$first = pop(@array);
$second = pop(@array);
print "\nFirst ".$first."\n";
print "\nSecond ".$second."\n";

#PUSH OPERATION
push @array,100;
push (@array,200);
@others = qw/101 102 103 104 105/;
push (@array, @others);

print "Stack Values:\n";
foreach(@array){
	print "$_\n"
}
