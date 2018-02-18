{ ZADANIE 30
* Zo vstupného súboru /home/data/studenti.txt načítajte zoznam 
* študentov v tvare Priezvisko Meno. Vytvorte nový zoznam tak, že 
* posledný študent bude zapísaný ako prvý atď až po prvého študenta 
* pôvodného zoznamu, ktorý bude zapísaný ako posledný. Výsledok zapíšte 
* do súboru /home/data/studentin.txt. Výsledok skontrolujte v textovom 
* editore.
* }

program OtocenieZoznamuMien;

uses crt;

var subor, novyS: text;
	riadok: String;
	i, j: integer;
	riadky: array [1..30] of String;

begin
	clrscr;
	
	assign(subor, 'home/data/studenti.txt');
	reset(subor);
	
	assign(novyS, 'home/data/studentin.txt');
	rewrite(novyS);
	
	i := 0;
	while not eof(subor) do
		begin
			i := i + 1;
			readln(subor, riadok);
			riadky[i] := riadok;
		end;
	
	for j := 1 to i do
		writeln(novyS, riadky[i - j + 1]);								{otocenie}
	
	close(subor);
	close(novyS);
	readln;
end.
