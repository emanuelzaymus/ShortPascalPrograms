{ ZADANIE 7
* V domovskom adresári /maturita/texty je uložený súbor detvan.txt. 
* Vytvorte program, ktorý bude postupne čítať riadky textu a vypisovať 
* ich na konzole v obrátenom poradí. Teda posledný znak riadku bude 
* vypísaný ako prvý. Na konci výpisu vypíšte počet medzier v texte.
* }

program RiadkyNaopak;

uses crt;

var subor: text;
	riadok: String;
	i, dlzkaRiadka, pocetMedzier: integer;

begin
	clrscr;

	assign(subor,'detvan.txt');											{pripnutie rukovete SUBOR k suboru DETVAN.TXT, ktory sa nachadza v zlozke kde je umiestneny program}
	reset(subor);														{otvorenie suboru pre citanie}
	
	riadok := '';
	
	while (not eof(subor)) do											{pracuje so suborom az kym nepride nakoniec suboru - while not EndOfFile}
		begin
			readln(subor, riadok);										{nacita zo suboru 1 riadok}
			writeln(riadok);
		end;
	writeln;
	
	reset(subor);
	pocetMedzier := 0;
	
	while (not eof(subor)) do
		begin
			readln(subor, riadok);
			dlzkaRiadka := (length(riadok));
			
			for i := 1 to dlzkaRiadka do
				begin
					write(riadok[dlzkaRiadka - i + 1]);					{otocenie riadku po 1 znaku}
					if ((riadok[dlzkaRiadka - i + 1]) = ' ') then pocetMedzier := pocetMedzier + 1;
				end;
			writeln;
		end;
		
	writeln;
	writeln('Pocet medzier v subore: ', pocetMedzier);
	
	close(subor);														{zatvorenie suboru}
	readln;
end.
