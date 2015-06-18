#!/usr/bin/perl
#Perlish Solution for problem  find an i in a array, such that, A1+A2...Ai-1 =Ai+1+Ai+2...AN.
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w Sherlock and Array.pl <filename"#######################################
#2
#3
#1 2 3
#4
#1 2 3 3
my ($t,$s,$line);
my @arr;
chomp($t=<>);
for(1..$t){
	$s=<>;
	$line=<>;
	@arr=split(/ /,$line);
	if($#arr==0){
		$result='YES';
		print $result,"\n";
		
	}
	else{
	my $result= investigate(\@arr,$s);
	print $result,"\n";}
	
}

sub investigate{
	my $arr = shift @_;
	my $size=shift @_;
	my $answer;
	$size--;
	my ($element,$left_sum,$right_sum);
	$left_sum=0; 
	$right_sum=0;
	for(1..$size){
		$right_sum=$right_sum+${$arr}[$_]; #We are calculating right sum first. By default we are considring 0th element as first element so we are summing all the elements from 1 to last.
	}
	for(1..$size){
		$element=${$arr}[$_];
		#Now we will increase left sum one by one and decrease right sum one by one.
		$left_sum=$left_sum+${$arr}[$_-1];
		$right_sum=$right_sum-$element;
		if($left_sum>$right_sum){
			$answer ='NO';
			last;
		}
		elsif($left_sum==$right_sum){
			$answer ='YES';
			last;
		}
	}
	return $answer;
}