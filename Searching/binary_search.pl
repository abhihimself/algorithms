#!/usr/bin/perl
#this is my version of binary search in book there is some changes I will analyze them later
use warnings;
use strict;
use Data::Dumper;
my $keyword = 4;

my @array        = qw(4 3 2 1 0 -1);
my @sorted_array = sort @array;
print @sorted_array;

#print scalar @sorted_array;
my $result=binary_search( $keyword, \@sorted_array );
print "result is $result" if defined $result;
print "notfound";

sub binary_search {
	chomp( my $keyword    = shift @_ );
	chomp( my $test_array = shift @_ );
	my $low  = 0;
	my $high = $#{$test_array}; 
	while ( $low <= $high ) {
		my $mid_val = int( ( $low + $high ) / 2 );
		print $mid_val, "\n";
		if ( $keyword < ${$test_array}[$mid_val] ) {
			$high = $mid_val-1;
		}
		elsif ( $keyword > ${$test_array}[$mid_val] ) {
			$low = $mid_val + 1;
		}
		else {
			print "element found at $mid_val","\n";
			return $mid_val;
		}
	}

return undef;

}
