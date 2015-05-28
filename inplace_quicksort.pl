#!/usr/bin/perl
#Perlish Solution for Inplace_Quick Sort-
#Author-Abhishek
#Hackerrank problem
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

my ($first,$last,$pivot);
$first=shift @_;
$last =shift @_;
$pivot =${$arr}[$last];
my ($i,$j);
$i=$first;
$j = $last-1;
my @range;
scan: {
	do{
		
		while(${$arr}[$i]<$pivot){
			$i++;
			last scan if $j<$i;
		}
		
		while(${$arr}[$j]>$pivot){
			$j--;
			last scan if $j<$i;
		}
		@{$arr}[$i,$j]=@{$arr}[$j,$i];		

	}while(--$j>=++$i);
	

	
}	

	#print @{$arr},"\n";
	if($i<$last){
		@{$arr}[$i,$last]=@{$arr}[$last,$i]
	}
		
	print join " ",@{$arr},"\n";
	#push @range ,(0,$j);
	#push @range,($i+1,$#{$arr});
	return($first,$j,$i+1,$last);
}
