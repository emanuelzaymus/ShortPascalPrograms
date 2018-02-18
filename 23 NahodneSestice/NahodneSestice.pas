{ ZADANIE 23
* Vytvorte program, ktorý pomocou generovania náhodných čísel 
* „vylosuje“ šesť čísel od jedna do 35. Urobte celkovo päť ťahov. 
* Čísla v jednom ťahu sa nesmú opakovať.
* }

program NahodneSestice;

uses crt;

var i, j, k, nahodne: integer;
	cisla: array [1..5] of integer;
	jeRovnake: boolean;

begin
	clrscr;
	randomize;
	
	for i := 1 to 5 do
		cisla[i] := 0;
	
	writeln();
	for k := 1 to 5 do
		begin
			write(' ', k, '. tah: ');
			
			for i := 1 to 6 do
				repeat
					nahodne := random(35) + 1;
					
					jeRovnake := false;
					for j := 1 to (i - 1) do
						if nahodne = cisla[j] then jeRovnake := true;
					
					if not jeRovnake then begin
						cisla[i] := nahodne;
						write(nahodne :3);
					end;
				until not JeRovnake;
				
			writeln();
		end;
	
	readln;
end.
