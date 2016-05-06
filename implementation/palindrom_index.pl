#!/usr/bin/perl
#
#Palindrom-
#Author-Abhishek
#Hackerrank problem
chomp (my $test_cases=<>);
my @words_array;
for(0..$test_cases-1){
	chomp($words_array[$_]=<>);
}

foreach(@words_array){
	my @tmp_array=split(//,$_);
	my $result =check_palindrom(\@tmp_array);
	print $result,"\n";
}

sub check_palindrom{
	my $test_array= shift @_;
	my $max_value =$#{$test_array};
	print @{$test_array};
 if(@{$test_array} eq reverse(@{$test_array})){
 	return -1;
 }
	else{
		for(1..$max_value){
				#if(	@{$test_array}[$_..$max_value]) 
		}
	

	}
	
}