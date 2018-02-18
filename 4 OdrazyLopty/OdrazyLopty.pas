{ ZADANIE 4
* Loptička je pustená z výšky V = 2 m, koeficient odrazu od zeme je 
* K =0 ,80. Zostavte program, ktorý: 1. napíše, koľko krát loptička 
* vyskočí do výšky väčšej ako 0.3 metra; 2. vypíše tabuľku pre prvých 
* 8 odrazov bude v nej poradové číslo odrazu a výška, do ktorej 
* loptička vyskočí.
* }

program OdrazyLopty;

uses crt;

var v, k, ostavajucaVyska, poslednyOdraz, pozadovanaVyska: real;
	pocetOdrazov, i: integer;
	p, z, rlh, rph, rld, rpd, lp, pp, hp, dp, kr: char;

begin
	clrscr;
	
	v := 2;
	k := 0.8;
	pozadovanaVyska := 0.3;
	ostavajucaVyska := v;
	pocetOdrazov := 0;
	
	while (ostavajucaVyska > pozadovanaVyska) do
		begin
			ostavajucaVyska := ostavajucaVyska * k;
			if ostavajucaVyska > pozadovanaVyska then pocetOdrazov := pocetOdrazov + 1;
		end;
	
	writeln('Pocet odrazov nad ', pozadovanaVyska:4:2, ' m: ', pocetOdrazov);
	writeln;
	
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
	
	writeln(' ',rlh,p,p,p,p,p,p,p,hp,p,p,p,p,p,p,p,p,p,p,p,p,p,p,rph);
	
	poslednyOdraz := v;
	writeln(' ', z, ' Cislo ', z, ' Vyska odrazu ', z);
	
	writeln(' ',lp,p,p,p,p,p,p,p,kr,p,p,p,p,p,p,p,p,p,p,p,p,p,p,pp);
	
	for i := 1 to 8 do
		begin
			poslednyOdraz := poslednyOdraz * k;
			writeln(' ', z, i:4, '.', z:3, poslednyOdraz:10:2, z:5);
		end;
	
	writeln(' ',rld,p,p,p,p,p,p,p,dp,p,p,p,p,p,p,p,p,p,p,p,p,p,p,rpd);
	
	readln;
end.
