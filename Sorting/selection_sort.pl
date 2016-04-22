#!/usr/bin/perl
#My solution for selection sort
use Data::Dumper;
my @array= qw(4 3 2 1);
#my $current_minimum ;
my $i;
my $tmp;
my $current_index;
#my $init;

for $i(0..$#array){
	#$current_minimum =$array[$i];
	for($i+1..$#array){
		if($array[$_]<$array[$i]){
			$tmp=$array[$_];
			$array[$_]=$array[$i];
			$array[$i]=$tmp;
			#$current_minimum=$tmp;
		}
	}
	
}





print Dumper @array;
