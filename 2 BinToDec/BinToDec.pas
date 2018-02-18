{ ZADANIE 2
* Vytvorte program, ktorý prevedie dvojkové číslo na desiatkové. 
* Výsledok porovnajte pomocou zápisu prevodu cez formátovací znak %.
* }

program BinToDec;

uses crt, sysutils, Math;

var binarneCislo, cifra: String;
	dlzkaVstupu, i, jednoCislo: integer;
	vysledok: float;																			{vysledok po intpower(a,x) musi byt v float alebo real}
	//znak: char;
	spravneCislo: boolean;

begin
	clrscr;
	
	repeat																						{cyklus na kontrolu vstupu}
		spravneCislo := true;
		write('Zadaj binarne cislo: ');
		readln(binarneCislo);
		
		dlzkaVstupu := length(binarneCislo);													{zistenie dlzky vstupu (vstupneho bin cisla v retazci)}
		for i := 1 to dlzkaVstupu do															{cyklus sa vykona prave tolkokrat kolko znakov na retazec}
			begin
				//cifra := (Copy(binarneCislo, (dlzkaVstupu - i + 1), 1));						{vyber 1 pismena z retazca}
				cifra:= (binarneCislo[dlzkaVstupu - i + 1]);									{iny zapis predchadzajuceho riadku}
				
				if (cifra <> '1') and (cifra <> '0') then spravneCislo := false;				{kontrola vstupu - resp. kontrola vybraneho pismena}
				//if (ord(znak) <> 48) and (ord(znak) <> 49) then spravneCislo := false;		{iny zapis predchadzajuceho riadku}
			end;
		
		if not spravneCislo  then																{ak sa zistil nespravny vstup, tak vypise chybu a bude nacitavat este raz}
		//if spravneCislo = false then															{iny zapis predchadzajuceho riadku, no lespie je pisat s NOT}
			begin
				clrscr;
				writeln('NESPRAVNY VSTUP');
			end;
		
	until spravneCislo;																			{opakuje az kym nie je zadany spravny vstup}
	
	vysledok := 0;
	
	for i := 1 to dlzkaVstupu do																{cyklus sa vykona prave tolkokrat kolko znakov na retazec}
		begin	
			cifra := (Copy(binarneCislo, (dlzkaVstupu - i + 1), 1));							{moze byt zapisane tak isto ako v riadku 28}
			jednoCislo := StrToInt(cifra);														{StrToInt prevedie String do Integer-u (v kniznici Sysutils)}
			
			vysledok := (vysledok + (jednoCislo * intpower(2, (i - 1))));						{zakazdym pripocita k vysledku prisluchajucu macninu 2-ky vynasobenu prisluchajucim cislom (jednoCislo)}	{intpower(zaklad mocniny, exponent) - v kniznici Math}
		end;
		
	clrscr;
	writeln('Binarne cislo: ', binarneCislo);
	writeln('Decimalne cislo: ', vysledok:1:0);

	readln;
end.
