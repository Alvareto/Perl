use open ':locale';
use locale;

my %count;

$duljinaPrefiksa =  pop @ARGV;

while (<>) {
	foreach $word (split(/ /)) {
		$count{lc substr($word, 0, $duljinaPrefiksa)}++;
	}
}

for my $key ( sort keys %count ) {
	print "$key : $count{$key}\n";
}
