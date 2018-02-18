{ ZADANIE 22
* Vytvorte program, ktorý pomocou cyklov zobrazí na konzole tabuľku 
* malej násobilky. Tabuľku orámujte.
* }

program MalaNasobilka;

uses crt;

var p, z, rlh, rph, rld, rpd, lp, pp, hp, dp, kr: char;
	i, j: integer;

begin
	clrscr;
	
	p := chr(205);			//priama ciara
	z := chr(186);			//zvisla ciara
	rlh := chr(201);		//roh lavy horny
	rph := chr(187);		//roh pravy horny
	rld := chr(200);		//roh plavy dolny
	rpd := chr(188);		//roh pravy dolny
	lp := chr(204);			//lavy predelovac
	pp := chr(185);			//pravy predelovac
	hp := chr(203);			//horny predelovac
	dp := chr(202);			//dolny predelovac
	kr := chr(206);			//krizovy
	
	writeln();
	writeln(' Mala nasobilka');
	writeln();
	
	writeln(' ', rlh,p,hp,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,rph);
	
	write(' ', z,'x',z);
	for i := 1 to 9 do
		write(i :3);	
	writeln(z);
	
	writeln(' ',lp,p,kr,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,pp);
	
	for i := 1 to 9 do
		begin
			write(' ', z,i,z);
			for j := 1 to 9 do
				write(i * j :3);
			writeln(z);
		end;
		
	writeln(' ',rld,p,dp,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,rpd);
	
	readln;
end.
