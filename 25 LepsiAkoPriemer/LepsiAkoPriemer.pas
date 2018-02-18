{ ZADANIE 25
* Vytvorte program, ktorý zo súboru/maturita/data/studbod.txt načíta 
* mená žiakov a počty bodov, ktoré žiaci dosiahli v teste a potom 
* vypíše mená tých, ktorých výsledok bol lepší ako priemer. 
* }

program LepsiAkoPriemer;

uses crt, sysutils;

type ziak = record														{typ record je nehomogenny udajovy typ kde spajame niekolko (roznych) typov do jedneho, pracujeme s nim ako s ostatnymi premennymi}
				meno, priezvisko: String;
				pocetBodov: integer
			end;

var subor: text;
	riadok: String;
	i, j, sucetBodov: integer;
	priemer: real;
	ziaci: array [1..30] of ziak;										{array zaznamov ziak}

begin
	clrscr;
	
	assign(subor, 'maturita/data/studbod.txt');							{studbod.txt je v zlozke data, ktora je v zlozke maturita a ta je v zloze kde sa nachadza projekt}
	reset(subor);
	
	i := 0;
	while not eof(subor) do
		begin
			i := i + 1;
			
			with ziaci[i] do											{ku jednotlivim prvkom zaznamu sa dostavame cez prikad with alebo cez bodku =  nazovZaznamu.prvokVZazname}
				begin
					meno := '';
					priezvisko := '';
				end;

			readln(subor, riadok);
			
			for j := 1 to length(riadok) do
				begin
					if riadok[j] = ' ' then																							{zisti ci sa nachadza na medzere ' '}
						if ziaci[i].meno = '' then ziaci[i].meno := copy(riadok, 1, j - 1)											{ak je meno prazdny retazec tak priradi menu cast z riadku}
							else if ziaci[i].priezvisko = '' then																	{ak je priezvisko prazdny retazec tak priradi menu cast z riadku}
								begin
									ziaci[i].priezvisko := copy(riadok, length(ziaci[i].meno) + 2, j - length(ziaci[i].meno) - 2);	{priradenie casti retazcov}
									ziaci[i].pocetBodov := StrToInt(copy(riadok, j + 1, length(riadok) - j));
								end;
 				end;
		end;
	
	sucetBodov := 0;
	for j := 1 to i do
		sucetBodov := sucetBodov + ziaci[j].pocetBodov;					{spocita vsetky body}
	
	priemer := sucetBodov / i;											{vypocita priemer}
	
	writeln('Priemer bodov = ', priemer:0:2);							{vypise priemer}
	writeln();
	
	for j := 1 to i do
		if ziaci[j].pocetBodov > priemer then							{ak je pocet bodov ziaka vacsi ako premer tak vypise jeho meno}
			writeln(ziaci[j].priezvisko, ' ', ziaci[j].meno);
	
	close(subor);
	readln;
end.
