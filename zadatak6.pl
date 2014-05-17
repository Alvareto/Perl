# Napisati Perl skriptu koja ce u datoteci koja se zadaje
# kao argument naredbenog retka izbrojati rijeci sa zajednickim
# preﬁksom. Duljina preﬁksa zadaje se kao zadnji argument naredbenog
# retka, a prethode mu imena datoteka (može ih biti i više).

use open ':std', ':encoding(UTF-8)';
my %count;

$duljinaPrefiksa =  pop @ARGV;

while (<>) {
	foreach $word ($_ =~ /\w+/g) {
		$_ = lc substr($word, 0, $duljinaPrefiksa);
		if (length == $duljinaPrefiksa) {			
			$count{$_}++;
		}
	}
}

for my $key ( sort keys %count ) {
	printf "%-6s : %s\n", $key, $count{$key};
}