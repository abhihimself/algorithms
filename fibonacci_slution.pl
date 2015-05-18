#!/usr/bin/perl
use strict;
use warnings;
#3 different ways to compute fibbonaci sereis of nth element
#Input Format 
#Enter the number as command line argument
#Author-Abhishek
=head
Here is the result for value 40. Recursive solution seems to be worse.
My close_form took (0, 0, 0, 0) seconds. Result is 102334155 
My iterative_sol took (0, 0, 0, 0) seconds. Result is 102334155 
My recursive_sol took (61.8, 0, 0, 0) seconds. Result is 102334155 
=cut
chomp(my $n=shift @ARGV);
my ($val1,$val2,$val3,$difference);
my @start_time;
my @end_time;
my @differences;

@start_time = times;
$val3=close_form($n);
@end_time    = times;
@differences = map { $end_time[$_] - $start_time[$_] }
				(0..$#start_time);

 $difference = join ', ', @differences;
print "My close_form took ($difference) seconds. Result is $val3 \n";



@start_time = times;
$val2=iterative_sol($n);
@end_time    = times;
@differences = map { $end_time[$_] - $start_time[$_] }
				(0..$#start_time);

 $difference = join ', ', @differences;
print "My iterative_sol took ($difference) seconds. Result is $val2 \n";


@start_time = times;
$val1=recursive_sol($n);
@end_time    = times;
@differences = map { $end_time[$_] - $start_time[$_] }
				(0..$#start_time);

$difference = join ', ', @differences;
print "My recursive_sol took ($difference) seconds. Result is $val1 \n";



sub iterative_sol{
	my $n= shift @_;
	if($n<=2){
		return 1; 
	}
	my ($older,$old)=(1,1);
	my $current;
	for(3..$n){
		$current= $old+$older; 
		$older=$old;
		$old=$current;
	}
	return $current;
}

sub recursive_sol{
		my $n= shift @_;
	if($n<=2){
		return 1;
	}
	return recursive_sol($n-1)+recursive_sol($n-2);
	
	
}

sub close_form{
	#my $n= shift @_;	
my ($n, $s) = (shift, sqrt(5));
return (((0.5 + 0.5*$s)**$n) - ((0.5 - 0.5*$s)**$n)) / $s; #this method i have taken refrence from bool Algortihm with perl.
#this is the fastest method according to book.

	
}