# perl skripta koja će učitati 
# niz brojeva u listu
# izračunati i ispisati 
# aritmetičku sredinu 
# učitanih brojeva

# taken from http://forums.macrumors.com/showthread.php?t=249058
chomp($line = <STDIN>); # read line
# $line =~ s/(^\s+)|(\s+$)//g; # remove lead and trail white spaces
@_ = split(/\s+/, $line); #split on white space into array

# http://www.mail-archive.com/beginners@perl.org/msg80067.html
# according to the given link,
# there are numerous ways to calculate avg
# value of the numbers

# taken from http://www.perlmonks.org/?node_id=801356
use List::Util qw(sum);
print sum(@_)/@_;