#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;
my $keyword ='abhi';
binary_search($keyword);

sub binary_search{
	chomp(my $keyword =shift @_);
	my @data_base= qw[abhishek sarika sumit robin piyush sunny tarun];
	foreach(@data_base){
	#	print $_,"\n";
		if($keyword =~ /.*abhi.*/){
			
			print "$keyword found at position $_";
			return;
		}
	}
	print "$keyword not found";
	return undef;
	
}