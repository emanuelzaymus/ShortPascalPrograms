{ ZADANIE 11
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý urobí analýzu textu podobnú ako program 
* Microsoft Word. Spočítajte počet slov, počet medzier a počet 
* odstavcov. Prípadné rozdiely oproti programu word zdôvodnite.
* }

program AnalyzaTextu;

uses crt;

var subor: text;
	pocetMedzier, pocetOdstavcov: integer;
	znak: char;

begin
	clrscr;
		
	assign(subor, 'detvan.txt');
	reset(subor);
	
	pocetMedzier := 0;
	pocetOdstavcov := 0;
	while (not eof(subor)) do
		begin
			read(subor, znak);
			
			if znak = ' ' then pocetMedzier := pocetMedzier + 1
				else if znak = #13 then pocetOdstavcov := pocetOdstavcov + 1;
		end;
	
	writeln('Analyza textu:');
	writeln();
	writeln('Pocet slov: ', pocetMedzier + 1);
	writeln('Pocet medzier: ', pocetMedzier);
	writeln('Pocet odstavcov: ', pocetOdstavcov);
	
	close(subor);
	readln;
end.
