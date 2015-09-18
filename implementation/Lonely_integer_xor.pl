#!/usr/bin/perl
#Perlish Solution for finding a lonely integer.Means in a given array all butone element will be unpaired we have ti find that.
#The most optimize solution is to use xor. Because 
#x^y=z z^y=x means uniqueness of x is maitained 
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w Sherlock and Array.pl <filename"#######################################
my ( $n, $element, $line );
my @arr;
#my %number_hash;
$n    = <>;
chomp($line = <>);
@arr  = split(//,$line);

my $unique=0;
foreach (@arr) {
$unique =$unique^$_; #traversing through whole array xor operation will maitain the uniqueness of numbers.

}
print $unique,"\n";