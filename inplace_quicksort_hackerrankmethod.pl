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
#if($#arr==0){
#	print @arr,"\n";
#}


my $first=0;
my $last=$#arr;
@stack=($first,$last);
my ($first_of_first,$last_of_first,$first_of_last,$last_of_last);
	do{
if($last>$first){
	($first_of_first,$last_of_first,$first_of_last,$last_of_last)=partition(\@arr,$first,$last);
	push(@stack,$first_of_last,$last_of_last,$first_of_first,$last_of_first);		
}		

($first,$last)= splice @stack, -2, 2;		
		
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
	$i++;
}

for $left($i..$j){
	if(${$arr}[$left]<$pivot){
		@{$arr}[$wall,$left]=@{$arr}[$left,$wall];
		$wall=$left;
	}
}

@{$arr}[$wall,$pivot]=@{$arr}[$pivot,$wall];


	#print @{$arr},"\n";
	#if($i<$last){
	#	@{$arr}[$i,$last]=@{$arr}[$last,$i]
	#}
		
	print join " ",@{$arr},"\n";
	#push @range ,(0,$j);
	#push @range,($i+1,$#{$arr});
	return($first,$wall-1,$wall+1,$last);
}
