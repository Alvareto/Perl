use warnings;
use DateTime;

# $0036436684;Lombarović;Mladen;2011-03-14 11:00 14:00 A210;2011-03-14 12:08:26

while(<>) {
	next if $. < 2;
	chomp;
	$w = "(.+?)";
	# JMBAG;Prezime;Ime;Termin;Zakljucano 
	$_ =~ m/^$w;$w;$w;$w;$w$/; 																	# problem je bio što nisam stavio $ za kraj reda.. POBOGU
	$JMBAG = $1;
	$Prezime = $2;
	$Ime = $3;
	$Termin = $4;
	$Zakljucano = $5;

	$Termin =~ m/$w-$w-$w $w:$w $w:$w $w/;
	my $Start = DateTime->new(
			year => $1,
			month => $2,
			day => $3,
			hour => $4,
			minute => $5,
			second => 0,
		);
	$Start->add(hours => 1);

	$Zakljucano =~ m/$w-$w-$w $w:$w:$w/;
	my $End = DateTime->new(
			year => $1,
			month => $2,
			day => $3,
			hour => $4,
			minute => $5,
			second => $6,
		);

	if($End >= $Start) {
		$Start->subtract(hours => 1);
		print "$JMBAG $Prezime $Ime	- PROBLEM: $Start --> $End \n";
	}
}