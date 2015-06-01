#!/usr/bin/perl
#Perlish Solution for Inplace_Quick Sort-
#Author-Abhishek
#Hackerrank problem
#left wall algorithm
################Test Input-Save it in a file and run program "perl -w inplace_quicksort.pl <filename"#######################################
#7
#5 8 1 3 7 9 2
####################################################################################################################################
use warnings;
use strict;
use Data::Dumper;
chomp(my $ar_size=<>);
chomp(my $line =<>);
my @arr=split(/ /,$line);
my @stack;
my $first=0;
my $last=$#arr;
@stack=($first,$last);
my ($first_of_first,$last_of_first,$first_of_last,$last_of_last);
	do{
if($last>$first){ #Array is greater than one. Then call the partition function
	($first_of_first,$last_of_first,$first_of_last,$last_of_last)=partition(\@arr,$first,$last);
	push(@stack,$first_of_last,$last_of_last,$first_of_first,$last_of_first);		
}		
#Put all the subarrays in a stack whch follow FILO rule.
($first,$last)= splice @stack, -2, 2;	#Pick the top subarray from stack. Splice is for double pop.
		
	}while(@stack);


sub partition{
my $arr = shift @_;	
my ($wall,$left,$last,$pivot);
$wall=shift @_;
#$left=$wall;
$last =shift @_;
$pivot =${$arr}[$last];
#$last--;
my ($i,$j);
$i=$wall;
$j=$last-1;
while(${$arr}[$i]<$pivot){
	$i++; #move i as far as possible
}
$wall=$i;
for $left($i+1..$j){ #when i can not move further search for an element less than pivot and swap it.
	if(${$arr}[$left]<$pivot){
		@{$arr}[$wall,$left]=@{$arr}[$left,$wall];
		$wall++;
	}
}

@{$arr}[$wall,$last]=@{$arr}[$last,$wall] if($wall<$last); #swap the pivot

		
	print join " ",@{$arr},"\n";
	return($first,$wall-1,$wall+1,$last); #return the subarrays limits
}
