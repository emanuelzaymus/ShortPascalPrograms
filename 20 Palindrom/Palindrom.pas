{ ZADANIE 20
* Vytvorte program, ktorý načíta reťazec, vypíše jeho dĺžku a zistí, 
* či je palindrom (t.j. symetrický podľa stredu ako napr. oko, radar, 
* korok a pod.).
* }

program Palindrom;

uses crt;

var i, dlzkaVstupu: integer;
	vstup: String;
	jePalindrom: boolean;

begin
	clrscr;
	
	write('Zadaj vstup: ');
	readln(vstup);
	
	jePalindrom := true;
	
	dlzkaVstupu := length(vstup);
	for i := 1 to dlzkaVstupu div 2 do
		begin
			if vstup[i] <> vstup[dlzkaVstupu - i + 1] then jePalindrom := false;
		end;
	
	write('Vstup ');
	if not jePalindrom then write('nie ');
	writeln('je palindrom.');
	
	readln;
end.
