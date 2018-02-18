{ ZADANIE 9
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý preformátuje text do blokov o dĺžke 160 znakov, 
* tieto bloky vypíšte na konzolu a na konci vypíšte pomocou koľkých SMS 
* správ môžeme text odoslať. Predpokladáme, že SMS správy neobsahujú 
* reklamné texty.
* }

program TextDoSMS;

uses crt;

var subor: text;
	znak: char;
	pocetZnakov, pocetSMS: integer;

begin
	clrscr;
	
	assign(subor,'detvan.txt');
	reset(subor);
	
	pocetZnakov := 0;
	pocetSMS := 0;
	
	while (not eof(subor)) do
		begin
			read(subor, znak);
			write(znak);
			
			pocetZnakov := pocetZnakov + 1;
			if (pocetZnakov mod 160 = 0) then							{ak je pocetZnakov delitelny 160 tak pripocita 1 ku pocetSMS a vytvori novy blok}
				begin
					pocetSMS := pocetSMS + 1;
					writeln();
					writeln();
				end;
		end;
	
	if (pocetSMS * 160 < pocetZnakov) then pocetSMS := pocetSMS + 1;	{kontrola ci nepotrebujem este jednu sms-ku}
	
	writeln();
	writeln();
	writeln('Text mozeme odoslat pomocou ', pocetSMS, ' SMS sprav.');
	
	close(subor);
	readln;
end.
