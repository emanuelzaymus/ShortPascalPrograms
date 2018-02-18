{ ZADANIE 10
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý uloží do výstupného súboru detvanvy.txt údaje 
* tak, že posledný riadok pôvodného súboru bude uložený ako prvý riadok 
* výstupného súboru. Výsledok skontrolujte v textovom editore.
* }

program PoslednyRiadokPrvym;

uses crt;

var subor, vystupny: text;
	riadok: String;
	pocetRiadkov, i: integer;

begin
	clrscr;
	
	assign(subor, 'detvan.txt');
	reset(subor);
	
	pocetRiadkov := 0;
	while (not eof(subor)) do											{zistenie poctu riadkov vstupneho suboru}
		begin
			pocetRiadkov := pocetRiadkov + 1;
			readln(subor, riadok);
		end;
	
	assign(vystupny, 'detvanvy.txt');
	rewrite(vystupny);													{otvorenie suboru pre zapis, ak subor neexistuje, tak ho vytvori}
	
	writeln(vystupny, riadok);
	
	reset(subor);
	for i := 1 to pocetRiadkov - 1 do
		begin
			readln(subor, riadok);
			writeln(vystupny, riadok);
		end;
	
	close(subor);
	close(vystupny);
	readln;
end.
