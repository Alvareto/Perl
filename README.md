#Perl

## Assignments

### TASK 1
Napišite Perl skriptu koja će od korisnika zatražiti (i učitati) niz znakova i broj ponavljanja (n). Učitani znakovni niz treba ispisati n puta (svaki put u novom redu).

### TASK 2
Napišite Perl skriptu koja će učitati niz brojeva u listu, te izračunati i ispisati aritmetičku sredinu učitanih brojeva. 

### TASK 3
U repozitoriju na stranici predmeta nalaze se dvije log-datoteke jednog web poslužitelja. To su tekst datoteke koje se generiraju svakoga dana, a datum je sadržan u imenu datoteke. Svaki redak odgovara jednom pristupanju poslužitelju. 

Napisati skriptu u Perlu koja će za svaki sat u danu ispisati broj pristupa poslužitelju. Kao argumenti naredbenog retka pri pozivu se navode imena log datoteka koje treba analizirati. Ako se ne navede niti jedna datoteka, skripta podatke treba čitati sa standardnog ulaza (sjetite se operatora <>).

````perl

 Datum: 2008-02-24
 sat : broj pristupa
-------------------------------
 00 : 99
 01 : 62
 02 : 15
   ...
 21 : 599
 22 : 615
 23 : 593

 Datum: 2008-02-25
 sat : broj pristupa
-------------------------------
 00 : 378
 01 : 68
 02 : 48
   ...
```` 

### TASK 4
U datoteci su zapisani podaci o terminima laboratorijskih vježbi pojedinih studenata, te vrijeme njihove predaje (zaključavanja) izlaznog testa, u obliku:
````csv
JMBAG;Prezime;Ime;Termin;Zakljucano
0036438919;Bagarić;Magdalena;2011-03-14 08:00 11:00 A209;2011-03-14 08:45:02
0036433049;Bajac;Darko;2011-03-14 08:00 11:00 A209;2011-03-14 08:48:19
0036439578;Bajer;Goran;2011-03-14 08:00 11:00 A209;2011-03-14 08:40:44
0067400961;Bandalo;Danijel;2011-03-14 08:00 11:00 A210;2011-03-14 08:59:07
0036436114;Barbarić;Katarina;2011-03-14 08:00 11:00 A210;2011-03-14 08:47:13
0036431797;Biberović;Filip;2011-03-14 11:00 14:00 A210;2011-03-14 11:58:43
0036436684;Lombarović;Mladen;2011-03-14 11:00 14:00 A210;2011-03-14 12:08:26
````

Napišite skriptu u Perlu, koja će za svakog studenta provjeriti je li zaključao svoj izlazni test unutar prvih sat vremena laboratorijskog termina. Ispisati podatke o studentima za koje taj uvjet nije ispunjen, kao u primjeru. Ime datoteke se navodi kao argument pri pozivu skripte. Ako se ne navede ime datoteka, skripta podatke treba čitati sa standardnog ulaza. 
````shell
bash-3.2$ ./zadatak4.pl labosi-zakljucano.csv
````
````perl
0036436684 Lombarović Mladen - PROBLEM: 2011-03-14 11:00 --> 2011-03-14 12:08:26 
0036325839 Matošić Luka - PROBLEM: 2011-03-14 11:00 --> 2011-03-15 11:49:26 
0036439146 Paar Marko - PROBLEM: 2011-03-14 11:00 --> 2011-03-14 12:16:22
								...
````

### TASK 5

Napišite skriptu u Perlu koja će iz datoteke čije je ime navedeno kao argument pri pozivu skripte učitati podatke o rezultatima studenata. U prvom retku datoteke zapisan je niz brojeva, odvojenih znakom ";", koji predstavljaju faktore s kojima se svaka komponenta ocjene množi. Slijede retci s podacima o svakom pojedinom studentu: matični broj, prezime i ime kao jedno polje, te niz brojevakojipredstavljajuostvarenerezultatepojedinihkomponentiocjenestudenta. Pojedinapolja odvojena su znakom ";". Ako neka bodovna komponenta nedostaje, označena je znakom "-". Primjer oblika datoteke:

````bash
# udjeli komponenti 
0.15;0.20;0.30;0.10;0.10;0.10;0.05 
#
# rezultati studenta 
0036438919;Bagarić;Magdalena;91.5;90.75;88.25;100;87.5;87.5;90 
0036439578;Bajer;Goran;64.4;72;64.75;72.5;76.25;50;62 
0036436684;Lombarović;Mladen;14.7;75.75;-;-;5;20;- ...
````

Skripta treba na temelju učitanih rezultata generirati rang-listu studenata, u kojoj će biti označen rang studenta, njegovo prezime i ime, te ukupni ostvareni broj bodova (dobije se zbrajanjem svih komponenti rezultata pomnoženih s pripadnim faktorima). Funkciji sort može se zadati blok naredbi ili potprogram koji obavlja usporedbu dva elementa liste koja se sortira. Za detalje pogle- dati dokumentaciju funkcije sort. Primjer pozivanja skripte:
````bash
bash-3.2$ ./zadatak5.pl rezultati.csv

Lista po rangu: 
------------------- 
	1. Bagarić, Magdalena (0036438919) : 90.35 
	2. Pavlinović, Matija (0036427706) : 82.20 
	3. Bandalo, Danijel (0067400961) : 72.94 
						... 
	13. Lombarović, Mladen (0036436684) : 19.86
						...
````

### TASK 6
Coming soon.

### TASK 8
Coming soon.
