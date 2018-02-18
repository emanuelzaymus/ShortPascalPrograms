{ ZADANIE 28
* Z textového vstupného súboru studenti.txt načítajte zoznam študentov. 
* Údaje majú tvar DDMMRRRR  Meno Priezvisko. DD je deň narodenia, MM je 
* mesiac narodenia a RRRR je rok narodenia študenta. Vypíšte na 
* obrazovku študentov, ktorí majú viac ako 19 rokov. Vedľa mena 
* a priezviska študenta napíšte dátum narodenia v tvare DD.MM.RRRR.
* }

program VypisZiakov;

uses crt, Dos, sysutils;												{kniznica Dos - potrebna pre pracu s datumom}

type ziak = record
				den, mesiac, rok: integer;
				meno: String;
			end;

var subor: text;
	Year, Month, Day, WDay: word;										{premenne aktualneho datumu}
	i, j: integer;
	riadok: String;
	ziaci: array [1..30] of ziak;
	jeStarsi: boolean;

begin
	clrscr;
	
	assign(subor, 'studenti.txt');
	reset(subor);
	
	i := 0;
	while not eof(subor) do
		begin
			i := i + 1;
			readln(subor, riadok);
			
			with ziaci[i] do
				begin
					den := StrToInt(copy(riadok, 1, 2));
					mesiac := StrToInt(copy(riadok, 3, 2));
					rok := StrToInt(copy(riadok, 5, 4));
					meno := copy(riadok, 11, length(riadok))
				end;
			
		end;
	
	GetDate(Year, Month, Day, WDay);									{inicializacia aktualneho datumu}
	
	writeln('Studenti starsi ako 19 rokov:');
	writeln();
	
	for j := 1 to i do
		begin
			jeStarsi := false;
			if ziaci[j].rok <= Year - 21 then jeStarsi := true
				else if ziaci[j].rok = Year - 20 then if ziaci[j].mesiac < Month then jeStarsi := true
					else if ziaci[j].mesiac = Month then if ziaci[j].den <= Day then jeStarsi := true;
			
			if jeStarsi then writeln(ziaci[j].meno, ' ', ziaci[j].den, '.', ziaci[j].mesiac, '.', ziaci[j].rok);
		end;
	
	close(subor);
	readln;
end.
