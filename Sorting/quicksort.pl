#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my @array=(10000,200000,46464648,0,99);
my $first=0;
my $last= $#array;
my $sorted_data=quick_sort(\@array,$first,$last);
print Dumper $sorted_data ;

sub quick_sort{
	my $test_array=shift @_;
	my $first=shift @_;
	my $last=shift @_;
	if($last>$first){
	my($last_of_first,$first_of_last);
	($last_of_first,$first_of_last)=partition($test_array,$first,$last);
	quick_sort($test_array,$first,$last_of_first);	
	quick_sort($test_array,$first_of_last,$last);
	}
	return $test_array;
}

sub partition{
	my $test_array = shift @_;
	my $first = shift @_;
	my $last = shift @_;
	my $i =$first;
	my $j= $last -1;
	my $pivot = ${$test_array}[$last];
	SCAN: {
		 do{
		while(${$test_array}[$i]<$pivot){
			$i++;
			last SCAN if($j<$i)
		}
		
		while(${$test_array}[$j]>$pivot){
			$j--;
			last SCAN if($j<$i)
		}
     @{$test_array}[$i,$j]=@{$test_array}[$j,$i];
	}while(--$j>=++$i);
	}
	
	if($i<$last){
		@{$test_array}[$i,$last]=@{$test_array}[$last,$i];
	}	
		return($j,$i);
}