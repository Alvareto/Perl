# perl skripta koja od korisnika zatraži
# i učitava niz znakova i broj ponavljanja (n)

# učitani znakovni niz ispisati n puta
# 	 (svaki put u novom redu) !!!

# COPYRIGHT @ Ivan Grgurina 2014


print "daj mi string:\n";
# učitao sam u @lines
chomp($string = <STDIN>);

print "broj po izboru?\n";
chomp($n = <STDIN>);

print $string x $n;