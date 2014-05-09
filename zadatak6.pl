Napisati Perl skriptu koja 
ce u datoteci koja se zadaje
kao argument naredbenog retka 
izbrojati rijeci sa zajednickim
 preﬁksom. Duljina preﬁksa zadaje
  se kao zadnji argument naredbenog
   retka, a prethode mu imena datoteka
    (može ih biti i više).

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