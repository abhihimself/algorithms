# Enter your code here. Read input from STDIN. Print output to STDOUT
use warnings;
use strict;
chomp( my $t = <> );
my $ladders_hash;
my $snakes_hash;
my $ladders_key;
my $snakes_key;
my ( $quo, $rem );
my ( $ladder, $outcome, $count, $fin_rem, $l_move );

#$move=0;

for ( 1 .. $t ) {
	$outcome = 1;
	$count   = 0;
	( $ladders_hash, $ladders_key ) = get_data();
	( $snakes_hash,  $snakes_key )  = get_data();

	while ( $outcome != 100 ) {
		if ( $ladder = find_ladder( $outcome, $ladders_key ) ) {
			$l_move = $ladder - $outcome;
			if ( $l_move < 6 ) {
				$count++;
				$outcome = $ladders_hash->{$ladder};
			}
	while ( $outcome != 100 ) {
			elsif ( $l_move > 6 ) {
				( $quo, $rem ) = ( int $l_move / 6, $l_move % 6 );
				for ( 1 .. $quo ) {
					$outcome = $outcome + 6;
					if ( check_snake( $snakes_key, $outcome ) == 1 ) {
						$outcome--;
						$rem++;
						$count++;
					}
					else {
						$count++;
					}

				}

				#$outcome=$outcome+$rem;
				$outcome = $ladders_hash->{$ladder};
				$count++;
			}
		}
		else {
			$l_move = 100 - $outcome;
			if ( $l_move < 6 ) {
				$count++;
				$outcome = $outcome + $l_move;
			}
			elsif ( $l_move > 6 ) {
				( $quo, $rem ) = ( int $l_move / 6, $l_move % 6 );
				for ( 1 .. $quo ) {
					$outcome = $outcome + 6;
					if ( check_snake( $snakes_key, $outcome ) == 1 ) {
						$outcome--;
						$rem++;
						$count++;
					}
					else {
						$count++;
					}

				}
				$outcome = $outcome + $rem;
				$count++;
			}

		}
		
	}
	print $count, "\n";
}

sub find_ladder {
	my $outcome    = shift @_;
	my $ladder_key = shift @_;
	my @possible;
	foreach ( @{$ladder_key} ) {
		if ( $outcome < $_ ) {
			return $_;
		}
	}
	return 0;

}

sub check_snake {
	my $snake_key = shift @_;
	my $outcome   = shift @_;
	foreach ( @{$snake_key} ) {
		if ( $outcome == $_ ) {
			return 1;
		}
	}
	return 0;

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

