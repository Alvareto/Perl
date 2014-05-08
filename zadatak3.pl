# Napisati skriptu u Perlu koja ´ce za svaki 
# sat u danu ispisati broj pristupa poslužitelju. 
# Kao argu- menti naredbenog retka pri pozivu se
# navode imena log datoteka koje treba analizirati.
# Ako se ne navede niti jedna datoteka, skripta 
# podatke treba ˇcitati sa standardnog ulaza

#print "Datum: $date\n";
my %count;
my $date;
while(<>) {
	chomp;
	# print "procitan: $_ \n";
	$w = "(.+?)";
	$_ =~ m/^$w $w $w \[$w:$w $w\] "$w $w $w" $w $w/;
	# 83.131.36.70 - - [24/Feb/2008:01:12:54 +0100] "GET /favicon.ico HTTP/1.1" 404 988
	$date     = $4;
    $time     = $5;
    
    ($hh, $mm, $ss) = split(':', $time); 	   
	
	$count{$hh}++;
	#printf "%d : %d \n", $hh, $count{$hh};
    #print "$hh \n";
}
print "\nDatum $date \n";
print "sat : broj pristupa \n";
print "----+---------------- \n";

#local $, = "\n";
for my $key ( sort keys %count ) {
	print "$key  : $count{$key}\n";
	# sat : broj pristupa \n
}

#printf "%d \t %d ", $hh, $count{$hh};

#count_unique(@_);
#my %counts;
#    my @unique = grep !$counts{$_}++, @names;

#sub count_unique {
#	my @array = @_;
#	my %count;
#	map { $count{$_}++ } @array;
#	map {print "$_ = ${count{$_}}\n"} sort keys(%count);
#}

#$time = str2time($date);
#($ss,$mm,$hh,$day,$month,$year,$zone) = strptime($date);


#Sometimes not only you want to know if the pattern exists in a string, 
#but also what it actually matched. In that case, use the parentheses 
#to indicate the matched substring you want to know, and they will be
# assigned to the special $1, $2, ..., variables if the match is successful:
#if ($string =~ /(\d+)\s+(\d+)\s+(\d+)/) {
#  print "first three matched numbers are $1, $2, $3 in $string\n";
#}