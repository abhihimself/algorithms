#!/usr/bin/perl
#Author-Abhishek
#Hackerrank problem
#You will be given a list of 32 bits unsigned integers.
#You are required to output the list of the unsigned integers you get by flipping bits in its binary representation (i.e. unset bits must be set, and set bits must be unset).
################Test Input-Save it in a file and run program "perl -w Sherlock and Array.pl <filename"#######################################
use strict;
use Data::Dumper;
use integer;
my ($nstr,$n,$str);
my @arr;
chomp(my $t=<>);

for(1..$t){
chomp($n=<>);
#print "my input $n","\n";
$str=dec2bin($n);
@arr=split(//,$str);
foreach(@arr){
	$_=$_^1;
	
}	
#print @arr,"\n";
$nstr=join('',@arr);
print bin2dec($nstr),"\n";	
$#arr=-1;	
}



sub dec2bin {
	my $n= shift @_;
    my $str = unpack("B32", pack("N", $n));
    #$str =~ s/^0+(?=\d)//;   # otherwise you'll get leading zeros
    return $str;
}



sub bin2dec {
	my $nstr= shift @_;
    return unpack("N", pack("B32", $nstr));
}