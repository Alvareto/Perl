use open ':locale';
use locale;
use warnings;
my %studenti;
$w = "(.+?)";

while(<>) {
	next if /^#/;
	if ($. == 2){
		@udjeli = split(';', $_);
	}
	else {
		# 0036438919;Bagaric;Magdalena;91.5;90.75;88.25;100;87.5;87.5;90
		$_ =~ s/-/0/g;
		$_ =~ m/^$w;$w;$w;$w;$w;$w;$w;$w;$w;$w$/;

		$JMBAG = $1;
		$Ime = $2; 
		$Prezime = $3;
		@rezultati = ($4, $5, $6, $7, $8, $9, $10);

		$studenti{"$JMBAG;$Ime;$Prezime"} =
		($4 * $udjeli[0] +
			$5 * $udjeli[1] +
			$6 * $udjeli[2] +
			$7 * $udjeli[3] +
			$8 * $udjeli[4] +
			$9 * $udjeli[5] +
			$10 * $udjeli[6]);
	}
}

print "\nLista po rangu: \n------------------- \n";
# <=> compare numerically
# cmp compare strings
foreach my $student ( sort { $studenti{$b} <=> $studenti{$a} or $a cmp $b } keys %studenti) {
	$student =~ m/^$w;$w;$w$/;
	
	#$JMBAG = $1; $Ime = $2; $Prezime = $3;
	$temp = "$3, $2";
	printf "%02d. %-22s (%0010d) : %f\n", ++$count, $temp, $1, $studenti{$student};
}