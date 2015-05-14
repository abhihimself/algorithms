#!/usr/bin/perl
#Perlish Solution for Quick Sort-
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w quicksort.pl <filename"#######################################
#7
#5 8 1 3 7 9 2
####################################################################################################################################
use warnings;
use strict;
chomp(my $ar_size=<>);
chomp(my $line =<>);
my @grt;
my @less;
my @arr=split(/ /,$line);
##############Calling the quick sort function#####################################
my $sorted_arr=quick(\@arr);

sub quick{
	my $arr=shift @_;
		if($#{$arr}==0){
		return $arr;    #This is used to break the recursion chain when only one element is left in to the array.
		
	}
	#my $index=$#{$arr};
	my $pivot =@{$arr}[0];
	my @grt;
	my @less;
	my $uless; 
	my $ugrt;
	my @curr_array;

#this loop creates subbarays according to pivot value
	for(1..$#{$arr}){
		if (${$arr}[$_]>$pivot){
			push @grt, ${$arr}[$_];
		}
		elsif(${$arr}[$_]<$pivot){
		push @less, ${$arr}[$_];
	}
	}

#Now we we call quick function recursively for sub arrays untill one element is left in the array
#One element left means nothing elese is left to sort
if ($#less != -1){
		$uless=quick(\@less);
}
else{
	$uless=\@less
}
if($#grt != -1){

		$ugrt=quick(\@grt) ;	
	
}
else{
		$ugrt=\@grt; 
}


		
	push @curr_array,@{$uless};
	push @curr_array,$pivot;
	push @curr_array,@{$ugrt};
print join(" ", @curr_array), "\n"; #here we print current subarray before returning it to calling function
	return \@curr_array;
}

