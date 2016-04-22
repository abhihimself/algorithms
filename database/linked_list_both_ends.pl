#!/usr/bin/perl
use Data::Dumper;
use constant NEXT => 0;
use constant VAL  => 1;

#Here we will put two ppointers to track the linked list head and tail
my ( $head, $tail, $node );
$head = undef;
$tail = " ";
for ( 1 .. 5 ) {
	$node = [ undef, $_ * $_ ];
	if ( $tail eq " " ) { # if its a first node

		$head = $tail = $node; #intialize both head an tail on first node
	}
	else {
		$tail->[NEXT] = $node; #link two nodes
		$tail = $node; #move tail to latest node
	}
}

print $tail->[VAL];
