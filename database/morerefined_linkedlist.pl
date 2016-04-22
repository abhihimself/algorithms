#!/usr/bin/perl
use Data::Dumper;
use constant NEXT => 0;
use constant VAL  => 1;

#we can modify linked list both end script by removing if statement which handles the first condition.
#we will put the logic which will work for both  cases.
my $head = undef;
my $tail =\$head;
my $node;
for(1..5){
	$node=[undef,$_*$_];
	$$tail=$node; #here you are actually saving value in head
	$tail=\$node->[NEXT];#Now we are moving tail to next nodes address
}
print $tail;#tail will stop at last nodes next value which is set to undef.
print $head->[NEXT][NEXT][VAL];
=head
#code to make a linked list from reading a file.
$head = undef;
$tail = \$head;
while ( <> ) {
my $line = [ undef, $_ ];
$$tail = $line;
$tail = \$line->[NEXT];
}
=cut