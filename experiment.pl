# Enter your code here. Read input from STDIN. Print output to STDOUT
use warnings;
use strict;
my $t=<>;
my $max=0;
my $fmax=0;
my $i;
for (1..$t){
	chomp(my $n=<>);
	for $i(1..$n){
		$max=($n-$i)*$i;
		if($max>$fmax){
			$fmax=$max
		}
		
	}
	print $fmax,"\n";
}
