#!/usr/bin/perl
use Data::Dumper;
my @aoa;
my @aoh;
my %hoh;
my %hoa;

#for aoa first create a normal array like @aoa=();
#Now inside this put arrays in [] like @aoa=([1,2,3,4],[5,6,7,8]);
my @normal_array = ( 1, 2, 3, 4 );
@aoa = ( [ 1, 2, 3, 4 ], [ 'abhi', 'rob', 'piyush', 'sarika' ] );

		#for aoh first create a normal array like @aoh=(); 
		#Now inside this put anonymous hashes in {} like @aoh=({'abhi' => 1, 'rob' => 2},{});
		@aoh = (
			{
				'abhi' => 1,
				'rob'  => 2
			},
			{
				'sarika' => 3,
				'piyush' => 4
			}
		);
#print $aoh[1]{'piyush'};

my %normal_hash = (
	'abhi' => 1,
	'rob'  => 2
);
#print $normal_hash{abhi};

		#for %hoh creata a normal hash structure like %hoh =('key1'=>'value1' ) 
		#now this value1 will refer to another anonymous hash as mentioned below
		
		%hoh = (
			'bemployee' => {
				'abhi' => 1,
				'rob'  => 2
			},
			'nemployee' => {
				'sarika' => 3,
				'piyush' => 4
			  }
		
		);
		#print $hoh{'nemployee'}{'sarika'};

#for %hoa create a normal hash like %hoa = ('key1' => 'value1') 
#now these values will refer anonymous array as mentioned below
%hoa = (
 'bemployee' =>['abhi','rob'],
 'nemployee' =>['sarika','piyush' ]
);

#print $hoa{'bemployee'}[1];
