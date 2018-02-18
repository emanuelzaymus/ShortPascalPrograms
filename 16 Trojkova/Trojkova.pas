{ ZADANIE 16
* Vytvorte program na prevod celého dekadického čísla zadaného 
* z konzoly  na trojkové postupným delením. Madzivýsledky zobrazte 
* prehľadným spôsobom. Využite celočíselné delenie a modulo.
* }

program Trojkova;

uses crt;

var cislo, i, j, pomocna: integer;
	zvysky: Array [1..100] of byte;

begin
	clrscr;
	
	write('Zadaj desiatkove cislo: ');
	readln(cislo);
	
	writeln();
	writeln('Medzivysledky:');
	
	i := 0;
	pomocna := cislo * 3;
	
	repeat
		i := i + 1;
		pomocna := pomocna div 3;
		write(pomocna:6, ' / 3 = ', pomocna div 3 :6, ' + ');
		zvysky[i]:= pomocna mod 3;
		writeln(zvysky[i]);
	until (pomocna div 3) = 0;
	
	writeln();
	write('Trojkove cislo je: ');
	for j := i downto 1 do
		write(zvysky[j]);
	writeln();
	
	readln;
end.
