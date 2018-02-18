{ ZADANIE 26
* Vytvorte program, ktorý zo zadaného počtu sekúnd vypočíta koľko je 
* to dní, hodín minút a sekúnd. Zdôvodnite použitie typov premenných.
* }

program KonverziaSekund;

uses crt;

var sekundy, dni, hodiny, minuty, zvysneSekundy: longint;				{pouzivame longint aby sme mohli zadavat velke cisla}

begin
	clrscr;
	
	write('Zadaj pocet sekund: ');
	readln(sekundy);
	
	dni := sekundy div 86400;												{1 den = 24 * 60 * 60 sekund}
	hodiny := (sekundy - dni * 86400) div 3600;								{1 hodina = 60 * 60 sekund}
	minuty := (sekundy - dni * 86400 - hodiny * 3600) div 60;				{1 minuta = 60 sekund}
	zvysneSekundy := sekundy - dni * 86400 - hodiny * 3600 - minuty * 60;
	
	clrscr;
	
	writeln(sekundy, ' sekund = ', dni, ' dni, ', hodiny, ' hodin, ', minuty, ' minut a ', zvysneSekundy, ' sekund.');
	
	readln;
end.
