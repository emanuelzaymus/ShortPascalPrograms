{ ZADANIE 14
* Vytvorte funkciu, ktorá zistí ciferný súčet celého kladného čísla 
* a použite ju v hlavnom programe.
* }

program FunkciaCifernySucet;

uses crt, sysutils;

var c: Longint;															{globalne premenne - mozeme ich pouzivat v celom programe} {pouzijeme Longint namiesto integer-u aby sme mohli zadavat dlhzsie cisla}

																		{jednoduchsi variant funkcie s konvertovanim typov lokalnych premennych}
function cifernySucet(cislo: Longint): integer;							{deklaracia funkcie:  function nazovFunkcie(vstupnyParameter: typPremennej): vystupnyTypFunkcie;}
	var retazec: String;												{lokalne premenne - mozeme ich poucivat iba v tele funkcie}
		i, sucet: integer;
	begin
		retazec := IntToStr(cislo);
		sucet := 0;
		
		for i := 1 to length(retazec) do
			sucet := sucet + StrToInt(retazec[i]);						{jednotlivo pripocitavame kazdu cifru}
		
		cifernySucet := sucet;											{na konci funkcie zadame jej vystupnu hodnotu:  nazovFunkcie := nejakaHodnota;}
	end;

function cifSucet2(cislo: Longint): integer;							{zlozitejsi variant funkcie s matematickym vypoctom ciferneho suctu}
	var sucet, delitel: Longint;
	begin
		sucet := 0;
		delitel := 10;
		
		while (cislo * 10 > delitel) do
			begin
				sucet := sucet + (cislo mod delitel div (delitel div 10));
				cislo := cislo - (cislo mod delitel);
				
				delitel := delitel * 10;
			end;
			
		cifSucet2 := sucet;
	end;


begin
	clrscr;
	
	write('Zadaj cislo: ');
	readln(c);
	
	clrscr;
	
	writeln('Ciferny sucet cisla ', c, ' je ', cifernySucet(c));		{volanie funkcie - nazovFunkcie(premenna)}
	writeln('Vysledok z druhej funkcie: ', cifSucet2(c));
	
	readln;
end.
