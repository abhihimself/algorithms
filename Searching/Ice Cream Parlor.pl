#!/usr/bin/perl
#Perlish Solution for problem  search two elements in a array such that e1+e2 = M. Where M is already defined.
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w Ice Cream Parlor.pl <filename"#######################################
#2
#4
#5
#1 4 5 3 2
#4
#4
#2 2 4 3
my ($t,$s,$money,$line);
my @arr;
chomp($t=<>);
for(1..$t){
	$money=<>;
	$s=<>;
	$line=<>;
	@arr=split(/ /,$line);
	if($s==2){
		print "1 2","\n";
	}
	else{
find_two_elements(\@arr,$s,$money);
	}
}

sub find_two_elements{
	my $arr=shift @_;
	my $size=shift @_;
	my $money=shift@_;
	my($first_index,$second_index);
	for $first_index(0..$size-2){ #reason for size-2 is we dont want the last element. Because there is nothing righ to it. 
		for $second_index($first_index+1..$size-1) #This loop will iterate from current index to last index.
		{
			if(${$arr}[$first_index]+${$arr}[$second_index]==$money){
				$first_index++; #We have to add 1 in to the indexes because we 0 to n as array size but problem follows 1 to n .
				$second_index++;
				print "$first_index $second_index","\n";
				last;
			}
		}
	}
	
	return;
}