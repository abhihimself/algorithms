#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my @array=(4,3,5,1,2);
#print @array;
for my $i(reverse 1..$#array){
	for my $j(1..$i){
		if($array[$j-1]>$array[$j]){
			@array[$j-1,$j]=@array[$j,$j-1];
		}
	}
}
print Dumper @array;