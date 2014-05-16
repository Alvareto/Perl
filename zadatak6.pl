<<<<<<< HEAD
# Napisati Perl skriptu koja ce u datoteci koja se zadaje
# kao argument naredbenog retka izbrojati rijeci sa zajednickim
# preﬁksom. Duljina preﬁksa zadaje se kao zadnji argument naredbenog
# retka, a prethode mu imena datoteka (može ih biti i više).
=======
use open ':locale';
use locale;
>>>>>>> 64c7c77b044ce388510f49ac634ac0bffa6430e3

my %count;

$duljinaPrefiksa =  pop @ARGV;

while (<>) {
	#chomp $_;
	foreach $word ($_ =~ /\w+/g) { #  split(/\s+/)
		$_ = lc substr($word, 0, $duljinaPrefiksa);
		if (tr/a-z/a-z/ == $duljinaPrefiksa) { #transliteracija - broji mala slova u $_
			$count{$_}++;
		}
	}
}

for my $key ( sort keys %count ) {
<<<<<<< HEAD
	printf "%-6s : %s\n", $key, $count{$key};
}
=======
	print "$key : $count{$key}\n";
}
>>>>>>> 64c7c77b044ce388510f49ac634ac0bffa6430e3
