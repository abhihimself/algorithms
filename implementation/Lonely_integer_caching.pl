#!/usr/bin/perl
#Perlish Solution for finding a lonely integer.Means in a given array all butone element will be unpaired we have ti find that.
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w Sherlock and Array.pl <filename"#######################################
my ( $n, $element, $line );
my @arr;
my %number_hash;
$n    = <>;
$line = <>;
@arr  = split( / /, $line );

foreach (@arr) {
	$element = $_;
	if ( search_hash() == 0 ) {
		$number_hash{$_} = 1;
	}
	else {
		$number_hash{$_}++;
	}
}
foreach ( keys(%number_hash) ) {
	if ( $number_hash{$_} == 1 ) {
		print "$_", "\n";
	}

}

sub search_hash {
	foreach ( keys(%number_hash) ) {
		if ( $element == $_ ) {
			return 1;
		}
	}
	return 0;

}
