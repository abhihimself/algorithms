#!/usr/bin/perl
#Perlish Solution to figure out weather a given sentence is panagram or not.
#Panagram-Pangrams are sentences constructed by using every letter of the alphabet at least once.
#Author-Abhishek
#Hackerrank problem
my $line=<>;
my @arr=split(/ /,$line);
my ($word);
my @letters;
my @unique_collection;
foreach $word(@arr){
	@letters=split(//,$word);
	foreach(@letters){
	if (find_letter($_,\@unique_collection)==0){
		push (@unique_collection,$_);
	}
	else{
		next;
	}
	}
	
}
if($#unique_collection==25){
	print "pangram","\n";
}
else{print "not pangram","\n"}

sub find_letter{
	my $letter=shift @_;
	my $current_collection= shift @_;
	foreach(@{$current_collection}){
		if($_=~ /$letter/i){
			
			return 1;
		}
	}
	return 0;
}