{ ZADANIE 29
* Zo vstupného súboru /home/data/studenti.txt načítajte zoznam 
* študentov v tvare Priezvisko Meno. Medzi priezviskom a menom je vždy 
* jedna medzera. Vytvorte nový zoznam tak, že najprv bude zapísané Meno 
* a potom Priezvisko a zapíšte do súboru /home/data/studentit.txt. 
* Výsledok skontrolujte v textovom editore.
* }

program VymenaMenaAPriezviska;

uses crt;

var subor, novyS: text;
	riadok: String;
	i: integer;

begin
	clrscr;
	
	assign(subor, 'home/data/studenti.txt');
	reset(subor);
	
	assign(novyS, 'home/data/studentit.txt');
	rewrite(novyS);
	
	while not eof(subor) do
		begin
			readln(subor, riadok);
			i := 0;
			repeat
				i := i + 1;
			until riadok[i] = ' ';
			write(novyS, copy(riadok, i + 1, length(riadok)));
			writeln(novyS, ' ' + copy(riadok, 1, i - 1));
		end;
	
	close(subor);
	close(novyS);
	readln;
end.
