#!/usr/bin/perl
#Perlish Solution for finding a lonely integer.Means in a given array all butone element will be unpaired we have ti find that.
#The most optimize solution is to use xor. Because 
#x^y=z z^y=x means uniqueness of x is maitained 
#Author-Abhishek
#Hackerrank problem
################Test Input-Save it in a file and run program "perl -w Sherlock and Array.pl <filename"#######################################
use Data::Dumper;
my $binarynum=1000;
my $decimalnum=3;
=head
my $decimalnum = bin2dec($binarynum);
print $decimalnum,"\n";
# Convert a binary number to a decimal number
sub bin2dec {
	unpack("N", pack("B32", substr("0" x 32 . shift, -32)));
}
=cut
$binarynum = dec2bin($decimalnum);

# Convert a decimal to a binary
sub dec2bin {
	my $str = unpack("B32", pack("N", shift));
	#$str =~ s/^0+(?=\d)//;   # otherwise you'll get leading zeros
	return $str;
}
#print $binarynum;
my @narr=split(//,$binarynum);
my @arr=map{ !$_ }@narr;
print @arr,"\n";

   my $advice = pack( 'all u can in a van' );
   print $advice;