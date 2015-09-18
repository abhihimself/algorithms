#!/usr/bin/perl
#How many different ways can N be written as a sum of at least two positive integers? N is the input
#Input Format 
#First line of the input contains T, which is number of testcases. 
#Each testcase contains N.
#Constraints 
#1≤T≤100 
#2≤N≤1000

#Author-Abhishek
#Hackerrank problem

my ($n,$ways);
my $t=<>;

for (1..$t){
	chomp($n=<>);
	$ways =add_ways($n);
	print $ways,"\n";
}

sub add_ways{
	my $n =shift @_;
	my $count=0;
	my $fcount=0;
	my $t=1;
	if($n==1){
		return 1;
	}
	
	while($n>$t){
		$count =add_ways($t);
		$t++;
		$fcount=$fcount+$count;
	}
	
	return $fcount;
}