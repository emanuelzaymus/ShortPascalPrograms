{ ZADANIE 3
* Kvadratická rovnica má tvar ax2 + bx + c =0. Člen a nazývame 
* kvadratický člen, b lineárny člen a c absolútny člen, pričom a ≠ 0.
* Vytvorte program, ktorý po zadaní koeficientov a, b, c z konzoly 
* vypočíta korene kvadratickej rovnice. Pred výpočtom urobte analýzu 
* a vypíšte, či má rovnica dva korene, jeden dvojnásobný koreň 
* x1,2 = (-b ± sqrt(b2 –4ac)) / 2a. alebo nemá riešenie. Pri analýze 
* zvažujte relácie výrazu (b2–4ac) a nuly. Pre výpočet použite vzorec.
* }

program KvadratickaRovnica;

uses crt;

var a, b, c, D: real;

begin
	clrscr;
	
	repeat																{nacitanie a kontrola kvadratickeho clena (a)}
		write('Zadajte A: ');
		readln(a);
		
		if a = 0 then													{ak a = 0 tak sa vykonaju prikazy}
			begin
				clrscr;
				writeln('Kvadraticky clen sa nemoze rovnat nule.');		{vypise chybu}
			end;
			
	until not (a = 0);													{opakuje ak je vstup nula}
	
	write('Zadajte B: ');
	readln(b);
	write('Zadajte C: ');
	readln(c);
	
	clrscr;

	writeln('ax^2 + bx + c = 0');										{vypis na obrazovku}
	writeln('(',a:3:1,')x^2 + (',b:3:1,')x + (',c:3:1,') = 0');
	
	writeln;
	D := (sqr(b) - (4 * a * c));										{vypocet diskriminantu}

	if (D > 0) then 																				{kontrola D: ak je diskriminant kladny (2 riesenia)}
		begin			
			writeln('Koren 1: ',(-b + sqrt(sqr(b) - 4 * a * c)) / (2 * a) :10:1);
			writeln('Koren 2: ',(-b - sqrt(sqr(b) - 4 * a * c)) / (2 * a) :10:1);
		end																							{nedava sa ';' kvoli else-u}
		else if (D = 0) then writeln('1 koren: ',(-b / (2 * a)):10:1)								{nedava sa ';' kvoli else-u} {kontrola D: ak D = 0 (1 riesenie)}
			else if (D < 0) then writeln('V realnych cislach rovnica nema riesenie.');				{kontrola D: ak je diskriminant zaporny (0 rieseni v realnych cislach)}
			//else writeln('V realnych cislach rovnica nema riesenie.');							{inak zapisany predchadzajuci riadok}
	
	readln;
end.
