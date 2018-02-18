{ ZADANIE 19
* Vytvorte program, ktorý na konzole zobrazuje postup generovania 
* dvadsiatich náhodne vygenerovaných celých čísel v rozsahu 1 až 79 
* zobrazovaním riadkov hviezdičiek. Počet hviezdičiek v riadku 
* zodpovedá vygenerovaným číslam.
* }

program NahodneHviezdickoveRiadky;

uses crt;

var i, j, nahodneCislo: integer;

begin
	randomize;
	clrscr;
	
	for i := 1 to 20 do
		begin
			nahodneCislo := Random(79) + 1;
			for j:= 1 to nahodneCislo do
				write('*');
			writeln();
		end;
	
	readln;
end.
