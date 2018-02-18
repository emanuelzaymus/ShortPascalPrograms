{ ZADANIE 12
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý vypíše riadky textu na obrazovku tak, že 
* vypustí z textu medzery a každé slovo bude začínať veľkým písmenom.
* }

program CamelCaseText;

uses crt;

var subor: text;
	znak: char;
	bolaMedzera: boolean;

begin
	clrscr;
	
	assign(subor, 'detvan.txt');
	reset(subor);
	
	bolaMedzera := false;
	
	while (not eof(subor)) do
		begin
			read(subor, znak);
			
			if znak = ' ' then bolaMedzera := true
				else begin
					if bolaMedzera then write(upCase(znak))
						else write(znak);
					
					bolaMedzera := false;
				end;
		end;
	
	close(subor);
	readln;
end.
