
%hash =('k1','v1', 'k2','v2','k3','v3');
%hash_num = (1,'one',3,'Three', 2 ,"Two");
#%hash1 =("k1","v1", "k2","v2","k3","v3");
#print %hash;
#print "\n";
#print %hash1;


foreach $k (keys %hash){
	#print "\n $k contains value $hash{$k}";
}
# use ship operator when the keys are numeric
# sort {$a<=>$b} keys %hash

for  (sort keys %hash){
#	print "\n $_ contains value $hash{$_}\n";
}



#change value of key

$hash{k1} ="T1";
delete $hash{k2};
#print %hash;


# TODO Random number genrator using hash



%hash_city = ("San Jose", 95117, "Santa Clara", 95054, "Cupertino", 95014, "Mountain View",94041);

for (reverse keys %hash_city){
	print "\n $_ contains value $hash_city{$_}\n";
}