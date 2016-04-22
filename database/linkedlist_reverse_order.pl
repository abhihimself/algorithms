#!/usr/bin/perl
use Data::Dumper;
use constant NEXT => 0;
use constant VAL => 1;

my $list =undef;
for(reverse 1..5){
	$list=[$list,$_*$_];
	
}
#here we created a link list with 5 element. Please note we started with highest element and went backward to lowest element 
#because our pointer will be there after finishin it.So it will be easy to access the list.


#now we will change some links. Advantage of likned list is we don't have to copy the actuall elements we just have change their link category to 
#change the order of the list
my $four = $list->[NEXT]; #address of list which have 4
my $nine = $four->[NEXT];
my $sixteen = $nine->[NEXT];

#lets change the links
#my implementation
$four->[NEXT]=$nine->[NEXT];
$nine->[NEXT]=$sixteen->[NEXT];
$sixteen->[NEXT]=$nine;
#here sixteen and nine block swapped their places
print $four->[NEXT][NEXT][NEXT][VAL];