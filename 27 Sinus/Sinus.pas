{ ZADANIE 27
* Vytvorte v jazyku Pascal program, ktorý po zadaní  uhla v stupňoch, 
* minútach a sekundách vypíše sínus zadaného uhla. Pascal pozná uhly 
* iba v radiánoch. 180 stupňov je PI (3.14159265) radiánov
* }

program Sinus;

uses crt;

//const PI = 3.14159265;

var stupne, minuty, sekundy: longint;
	deg, rad: real;

begin
	clrscr;
	
	writeln('Zadaj stupne, minuty, sekundy uhla.');
	readln(stupne, minuty, sekundy);
	
	deg := stupne + minuty / 60 + sekundy / 3600;
	rad := deg / 180 * PI;
	
	clrscr;
	
	writeln('Sinus ', deg:0:2, ' stupnov = sin(', rad:0:2, ') = ', sin(rad):0:2);
	
	readln;
end.
