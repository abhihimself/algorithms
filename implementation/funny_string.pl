#!/usr/bin/perl
#Suppose you have a string S 
#which has length N and is indexed from 0 to N−1. String R is the reverse of the string S. 
#The string S is funny if the condition |Si−Si−1|=|Ri−Ri−1| is true for every i from 1 to N−1.
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w Sherlock and Array.pl <filename"#######################################
my ($t,$string,$i,$flag);
my @arr;
my @rev_arr;
$flag=1;
chomp($t=<>);
for(1..$t){
	chomp($string=<>);
	@arr=split(//,$string);
	@rev_arr=reverse(@arr);
	for  $i(1..$#arr){
		if(abs (ord($arr[$i])-ord($arr[$i-1]))==abs (ord($rev_arr[$i])-ord($rev_arr[$i-1]))){
			next;
			
		}
		else{
			print "Not Funny","\n";
			$flag=0;
			last;
		}
	}
	
	if($flag!=0){
		print "Funny","\n" ;
	}
$flag=1;	
}
