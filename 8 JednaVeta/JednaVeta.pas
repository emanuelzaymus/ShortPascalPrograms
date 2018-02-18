{ ZADANIE 8
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý načíta zo súboru jednu vetu zakončenú bodkou,  
* zistí počet slov vo vete a vypíše celú vetu veľkými písmenami.
* }

program JednaVeta;

uses crt;

var subor: text;
	znak: char;
	veta: String;
	pocetMedzier: integer;
	
begin
	clrscr;
	
	assign(subor,'detvan.txt');
	reset(subor);
	
	veta := '';
	pocetMedzier := 0;
	
	repeat
		read(subor, znak);
		veta := veta + znak;
		if (znak = ' ') or (znak = #13) then pocetMedzier := pocetMedzier + 1;
	until znak = '.';
	
	writeln(veta);
	writeln();
	writeln('Pocet slov vo vete: ', pocetMedzier + 1);
	writeln();
	writeln(upCase(veta));
	
	close(subor);
	readln;
end.
