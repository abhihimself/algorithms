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
chomp(my $ar_size=<>);
chomp(my $line =<>);
my @arr=split(/ /,$line);
#my $first=0;
#my $last=$#arr;
my ($i,$j);

partition(\@arr);	



sub partition{
my $arr = shift @_;	
my ($first,$last,$pivot);
$first=0;
$last =$#{$arr};
$pivot =${$arr}[$last];
my ($i,$j);
$i=$first;
$j = $last-1;
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
	print @{$arr},"\n";
	if($i<$last){
		@{$arr}[$i,$last]=@{$arr}[$last,$i]
	}
		
	print @{$arr},"\n";
}
