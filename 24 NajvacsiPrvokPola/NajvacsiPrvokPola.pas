{ ZADANIE 24
* Vytvorte program, ktorý vygeneruje 50 náhodných čísel menších ako 
* 100 do jednorozmerného poľa. Potom nájde v jednorozmernom poli 
* najväčší prvok a vypíše ho aj s jeho umiestnením.
* }

program NajvacsiPrvokPola;

uses crt;

var i, miestoNajvacsieho: integer;
	cisla: array [1..50] of integer;

begin
	clrscr;
	randomize;
	
	for i := 1 to 50 do
		cisla[i] := random(100);
	
	miestoNajvacsieho := 1;
	for i := 2 to 50 do
		if cisla[i] > cisla[miestoNajvacsieho] then miestoNajvacsieho := i;
	
	writeln('Najvacsi prvok v poli = ', cisla[miestoNajvacsieho]);
	writeln('Umiestnenie najvacsieho prvku = ', miestoNajvacsieho);
	
	readln;
end.
