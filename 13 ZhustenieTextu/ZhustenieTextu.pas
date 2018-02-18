{ ZADANIE 13
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý vypustí z programu medzery a prvé písmeno 
* každého slova upraví na kapitálku. Upravený text vypíšte na obrazovku. 
* Vypíšte na koľko percent sa zhustil pôvodný text.
* }

program ZhustenieTextu;

uses crt;

var subor: text;
	znak: char;
	bolaMedzera: boolean;
	pocetZnakov, pocetMedzier: integer;

begin
	clrscr;
	
	assign(subor, 'detvan.txt');
	reset(subor);
	
	bolaMedzera := false;
	pocetZnakov := 0;
	pocetMedzier := 0;
	
	while (not eof(subor)) do
		begin
			read(subor, znak);
			pocetZnakov := pocetZnakov + 1;
			
			if znak = ' ' then begin 
					bolaMedzera := true;
					pocetMedzier := pocetMedzier + 1;
				end
				else begin
					if bolaMedzera then write(upCase(znak))
						else write(znak);
					
					bolaMedzera := false;
				end;
		end;
	
	writeln();
	writeln();
	writeln('Text sa zhustil na ', (pocetZnakov - pocetMedzier) / pocetZnakov * 100 :2:2, '%');
	
	close(subor);
	readln;
end.
