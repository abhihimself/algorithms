#!/usr/bin/perl
#The British and American Style of Spelling
#Example-2
#hackerrank has such a good ui that it takes no time to familiarise its environment
#to familiarize oneself with ui of hackerrank is easy
#1
#familiarize
#familiarize or familiarise came two times in above text hance outcome will be 2
#Author-Abhishek
#Hackerrank problem
my ($count,$fcount);
chomp( my $n = <> ); #getting number of lines of text
my @arr;
for ( 0 .. $n-1 ) {
	chomp($arr[$_] = <>); #Storing all text in to array
}

chomp(my $word_num = <>); #getting number of words
my @words;
for ( 0 .. $word_num-1 ) { 
	chomp($words[$_] = <>); #Storing all the test words
}

foreach my $i(@words){
	chop($i);
	chop($i); #chopping last two words
	foreach my $line(@arr){
		$count=()=$line =~ /$i(se|ze)/g; #counting the number of occurences of test word in to the given sentences
			$fcount=$fcount+$count;
	}

	print $fcount,"\n";
	$fcount=0;
}
