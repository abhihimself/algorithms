#!/usr/bin/perl
#Goal-Comparison of quick sort and insertion sort
#Author-Abhishek
#Hackerrank problem
#left wall algorithm for quick sort. Insertion sort as usual.
################Test Input-Save it in a file and run program "perl -w inplace_quicksort.pl <filename"#######################################
#7
#1 3 9 8 2 7 5
####################################################################################################################################
use warnings;
use strict;
use Data::Dumper;
chomp( my $ar_size = <> );
chomp( my $line    = <> );
my @arr = split( / /, $line );
my @arr1=@arr;
my $quick_result = quick_sort( \@arr );
my $insert_result =insertion_sort(\@arr1);
print $insert_result-$quick_result,"\n" ;

sub insertion_sort{
	my $arr=shift @_;
	my $pointer1;
	my $pointer2;
	my $value;
	#my $first=0;
	my $count =0;
	my $last = $#{$arr};
	for $pointer1(1..$last){ #We are starting from 1st element. Because for 0th element there is nothing to sort.
		$value=${$arr}[$pointer1];
		$pointer2=$pointer1-1;
		
		while($pointer2>=0){ 
			
			if($value<${$arr}[$pointer2]){
				${$arr}[$pointer1]=${$arr}[$pointer2];
					$count++; #counting every shift
				if($pointer2==0){
					${$arr}[$pointer2]=$value; #If pointer2 is reached to 0th index we have to insert the current value there only.We have nowhere to go further.
					last;
				}
			
					
				$pointer1=$pointer2;						
			}
			else{
			${$arr}[$pointer1]=$value; #Inseritng the value in the sorted subarray
			#$count++;
			last;	
			}
			
			$pointer2--; #decreasing the inner loop
			}
		#print $count,"\n";	
		}
		#print @{$arr},"\n";
		#print "insert: $count","\n";
		return $count;
	}
	




sub quick_sort {
	my $arr = shift @_;
	my @stack;
	my $first = 0;
	my $last  = $#{$arr};
	my $count=0;
	my $curr_count;
	@stack = ( $first, $last );
	my ( $first_of_first, $last_of_first, $first_of_last, $last_of_last );
	do {
		if ( $last > $first )
		{    #Array is greater than one. Then call the partition function
			( $first_of_first, $last_of_first, $first_of_last, $last_of_last,$curr_count )
			  = partition( $arr, $first, $last );
			  $count = $count+$curr_count;
			push( @stack,   
		#Put all the subarrays in a stack which follow FILO rule.
				$first_of_last,  $last_of_last,
				$first_of_first, $last_of_first );
		}

		( $first, $last ) = splice @stack, -2,
		  2;    #Pick the top subarray from stack. Splice is for double pop.

	} while (@stack);
#print "quick: $count","\n";
return $count;
}

sub partition {
	my $arr = shift @_;
	my ( $first, $wall, $left, $last, $pivot,$count );
	$count=0;
	$first = shift @_;
    $wall=$first; 
	#$left=$wall;
	$last  = shift @_;
	$pivot = ${$arr}[$last];

	#$last--;
	my ( $i, $j );
	$i = $wall;
	$j = $last - 1;
	while ( ${$arr}[$i] < $pivot ) {
		$i++;    #move i as far as possible
$count++;
	}
	$wall = $i;
	for $left ( $i + 1 .. $j )
	{ #when i can not move further search for an element less than pivot and swap it.
		if ( ${$arr}[$left] < $pivot ) {
			@{$arr}[ $wall, $left ] = @{$arr}[ $left, $wall ];
			$count++;
			$wall++;
		}
	}
if ( $wall < $last ){
	@{$arr}[ $wall, $last ] = @{$arr}[ $last, $wall ];    #swap the pivot
	
}
$count++;
	#print join " ", @{$arr}, "\n";
	return ( $first, $wall - 1, $wall + 1, $last, $count ); #return the subarrays limits
}
