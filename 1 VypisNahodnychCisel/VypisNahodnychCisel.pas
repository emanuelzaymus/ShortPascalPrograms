{ ZADANIE 1
* Vytvorte program, ktorý pomocou generovania náhodných čísel 
* „vylosuje“ šesť čísel od jedna do 49. Urobte celkovo sedem ťahov. 
* Čísla v jednom ťahu sa nesmú opakovať.
* }

program VypisNahodnychCisel;

uses crt;

var riadok, k, c, nahodneCislo: integer;
	cislo: array [1..6] of integer;
	nieJeRovnake: boolean;

begin
	randomize;
	
	for c := 1 to 6 do
		cislo[c] := 0;
	
	writeln('7 riadkov nahodnych cisel (1 - 49).');
	writeln;
	
	for riadok := 1 to 7 do 
		begin
			readln;
			
			write(riadok, ':');
			for c := 1 to 6 do
				begin
					repeat
						nieJeRovnake := true;
						nahodneCislo := random(47) + 1;
						
						for k := 1 to (c - 1) do
							if nahodneCislo = cislo[k] then nieJeRovnake := false;
						
						if nieJeRovnake then
							begin
								cislo[c] := nahodneCislo;
								write(cislo[c] :4);
							end;
					until nieJeRovnake;
				end;
		end;
	
	readln;	
end.
