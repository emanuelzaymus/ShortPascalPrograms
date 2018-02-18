{ ZADANIE 15
* Vytvorte program na prevod celého dekadického čísla zadaného 
* z konzoly na dvojkové postupným delením. Medzivýsledky zobrazte 
* prehľadným spôsobom. Využite celočíselné delenie a modulo.
* }

program DecToBin;

uses crt;

var cislo, i, j, pomocna: integer;
	zvysky: Array [1..100] of byte;										{byte - potrebujeme cisla iba 1 a 0}

begin
	clrscr;
	
	write('Zadaj desiatkove cislo: ');
	readln(cislo);
	
	writeln();
	writeln('Medzivysledky:');
	
	i := 0;
	pomocna := cislo * 2;												{do cyklu musime ist s dvojnasobkom povodneho cisla aby sme nestratili poslednu cifru}
	
	repeat
		i := i + 1;
		pomocna := pomocna div 2;
		write(pomocna:6, ' / 2 = ', pomocna div 2 :6, ' + ');
		zvysky[i]:= pomocna mod 2;
		writeln(zvysky[i]);
	until (pomocna div 2) = 0;
	
	writeln();
	write('Binarne cislo je: ');
	for j := i downto 1 do												{downto - dekrementacia}
		write(zvysky[j]);
	writeln();
	
	readln;
end.
