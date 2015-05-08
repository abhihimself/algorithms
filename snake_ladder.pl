# Enter your code here. Read input from STDIN. Print output to STDOUT
#3 2 2
use warnings;
use strict;
chomp( my $t = <> );
my $ladders_hash;
my $snakes_hash;
my $ladders_key;
my $snakes_key;
my @board;
my @visited;
my @queue;
my @enter_cell;
my @tmp_cell;
my $rem_cell;
my $distance=0;
my $N=100;
#$move=0;

for ( 1 .. $t ) {

	( $ladders_hash, $ladders_key ) = get_data();
	( $snakes_hash,  $snakes_key )  = get_data();

#make board
for(0..$N-1){
	$board[$_]=-1;
	$visited[$_]='false';
}

#update snake ladder values in cell
foreach(@{$ladders_key}){
	$board[$_]=$ladders_hash->{$_}-1;
}
foreach(@{$snakes_key}){
	$board[$_]=$snakes_hash->{$_}-1;
}
#############################################################################


@enter_cell=(0,0);
$queue[0]=\@enter_cell;
$visited[0]='true';
$distance=$enter_cell[1];


while($#queue!=-1){
	$rem_cell=$queue[$#queue];
	if(${$rem_cell}[0]==$N-1){
		#print ${$rem_cell}[1];
		last;
	}
	shift @queue;
	for(${$rem_cell}[0]+1..${$rem_cell}[0]+6){
		if($_<$N-1){
			
		
		if($visited[$_] ne 'true'){
			$visited[$_]='true';
			$tmp_cell[1]=$distance+1;
			if($board[$_]!=-1){
				$tmp_cell[0]=$board[$_];
			}
			else{
				$tmp_cell[0]=$_;
			
			}
		push (@queue,\@tmp_cell);
		}
		}
	}
	$distance=$tmp_cell[1];
	
}
print $tmp_cell[1],"\n";

}





sub get_data {
	my ( $data_num, $line, $i );
	my %data_value;
	my @sort_data_key;
	my ( $key, $value );

	chomp( $data_num = <> );
	for ( 0 .. ( $data_num - 1 ) ) {
		chomp( $line = <> );
		( $key, $value ) = split( / /, $line );
		$data_value{$key} = $value;
	}

	foreach $key ( sort { $a <=> $b } keys %data_value ) {
		push( @sort_data_key, $key );
	}
	return ( \%data_value, \@sort_data_key );

}

