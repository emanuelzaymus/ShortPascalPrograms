{ ZADANIE 18
* Vytvorte program na zašifrovanie textu zadaného z konzoly. Šifrovací 
* kľúč je 472. Šifrovať treba tak, že budeme postupne meniť ascii kód 
* trojíc šifrovaného textu. Ascii kód prvého znaku z trojice posunieme 
* o 4, druhého o 7 a tretieho o 2 znaky. V nasledujúcich trojiciach 
* postup opakujeme. Výsledok vypisujeme na konzole.
* }

program Sifrovanie;

uses crt;

var vstup: String;
	i, zvysok: integer;

begin
	clrscr;
	
	writeln('Zadaj vstup:');
	readln(vstup);
	
	writeln();
	
	writeln('Zasifrovany text pomocou kluca 472:');
	
	for i := 1 to length(vstup) do
		begin
			zvysok := i mod 3;
			case zvysok of
				1: write(chr(ord(vstup[i]) + 4));
				2: write(chr(ord(vstup[i]) + 7));
				0: write(chr(ord(vstup[i]) + 2));
			end;
		end;
	
	readln;
end.
