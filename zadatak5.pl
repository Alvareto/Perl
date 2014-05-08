$w = "(.+?)";
while(<>) {
	if ($. == 1){
		@udjeli = split(';', $_);
	}
	else {
		# 0036438919;Bagaric;Magdalena;91.5;90.75;88.25;100;87.5;87.5;90
		$_ =~ m/^$w;$w;$w;$w;$w;$w;$w;$w;$w;$w$/;
		$JMBAG = $1; $Ime = $2; $Prezime = $3;
		@rezultati = ($4, $5, $6, $7, $8, $9, $10);
	}
}
package Student;

sub new {
	my ($class, %args) = @_;
	return bless { %args }, $class;
}

sub probna_metoda {
	my ($self) = @_;
	print $self->{sample_data};
}

#usage:
my $obj = Student->new( )