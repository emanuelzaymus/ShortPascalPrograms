{ ZADANIE 5
* Rodné číslo obsahuje 10 číslic. Prvých 6 číslic vyjadruje dátum 
* narodenia a je v tvare RRMMDD. Pričom RR označuje rok, MM mesiac a DD 
* deň narodenia. Ženy majú k mesiacu pripočítanú hodnotu 50. Vytvorte 
* program, ktorý po zadaní rodného čísla vypíše na obrazovku dátum 
* v tvare DD.MM.RRRR. V prípade, že ide o ženu bude výpis červený, ak 
* ide o muža bude výpis modrý.
* }

program RodneCisla;

uses crt, sysutils;

var rodneCislo, cifra: String;
	den, mesiac, rok, i: integer;
	jeZena, spravneCislo: boolean;
	znak: char;

begin
	clrscr;
	
	jeZena := false;
	
	repeat
		spravneCislo := true;
		clrscr;
		write('Zadajte rodne cislo (1917 - 2016): ');
		readln(rodneCislo);
		
		if length(rodneCislo) = 10 then 																						{kontrola poctu znakov RC}
			begin
				for i := 1 to 10 do 
					begin
						cifra := copy(rodneCislo,i,1);
						znak := cifra[1];
						if (ord(znak) < ord('0')) or (ord(znak) > ord('9')) then spravneCislo := false;							{kontrola ci kazdy znak je cislo}
					end;
				
				if spravneCislo then
					begin
						den := StrToInt(copy(rodneCislo,5,2));
						mesiac := StrToInt(copy(rodneCislo,3,2));
						rok := StrToInt(copy(rodneCislo,1,2));

						if (mesiac <= 0) or ((mesiac > 12) and (mesiac < 51)) or (mesiac > 62) then spravneCislo := false		{komtrola rozsahu mesiaca}
							else if (den > 31) or (den <= 0) then spravneCislo := false;										{komtrola rozsahu dni}
					end;
			end
			else spravneCislo := false;
	until spravneCislo;
	
	if mesiac > 12 then
		begin
			mesiac := mesiac - 50;
			jeZena := true;
		end;
		
	if rok > 16 then rok := rok + 1900
		else rok := rok + 2000;
	
	write('Datum narodenia: ');
	
	if jeZena then textcolor(12)
		else textcolor(9);
	
	if den < 10 then write('0');																								{uprava tvaru datumu na DD.MM.RRRR}
	write(den,'.');
	if mesiac < 10 then write('0');
	writeln(mesiac,'.',rok);
	
	readln;
end.
