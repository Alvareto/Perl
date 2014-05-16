# Napisati skriptu u Perlu koja ´ce za svaki 
# sat u danu ispisati broj pristupa poslužitelju. 
# Kao argu- menti naredbenog retka pri pozivu se
# navode imena log datoteka koje treba analizirati.
# Ako se ne navede niti jedna datoteka, skripta 
# podatke treba ˇcitati sa standardnog ulaza

my %count;
my $date;
while(<>) {
	chomp;

	$w = "(.+?)";
	$_ =~ m/^$w $w $w \[$w:$w $w\] "$w $w $w" $w $w/;
	# 83.131.36.70 - - [24/Feb/2008:01:12:54 +0100] "GET /favicon.ico HTTP/1.1" 404 988
	$date     = $4;
	$time     = $5;
    
    	($hh, $mm, $ss) = split(':', $time); 	   
	
	$count{$hh}++;
}
print "\nDatum $date \n";
print "sat : broj pristupa \n";
print "----+---------------- \n";

for my $key ( sort keys %count ) {
	print "$key  : $count{$key}\n";
	# sat : broj pristupa \n
}
