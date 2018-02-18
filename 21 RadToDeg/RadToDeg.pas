{ ZADANIE 21
* Vytvorte program, ktorý po zadaní uhla v radiánoch vypíše jeho 
* veľkosť v stupňoch minútach a sekundách. 180 stupňov je 
* PI (3.14159265) radiánov.
* }

program RadToDeg;

uses crt;

//const PI = 3.14159265;												{nemusime pisat, pretoze konstanta Pi je v pascale uz preddefinovana}

var rad, stupne, minuty, sekundy: real;

begin
	clrscr;
	
	write('Zadaj uhol v radianoch: ');
	readln(rad);
	
	stupne := rad * 180 / PI;
	minuty := (stupne - trunc(stupne)) * 60;							{trunc - zaokruhlenie nadol}
	sekundy := (minuty - trunc(minuty)) * 60;
	
	writeln();
	writeln(rad :1:2, ' rad = ', trunc(stupne), ' stupnov ', trunc(minuty), ' minut ', trunc(sekundy), ' sekund');
	
	readln;
end.
