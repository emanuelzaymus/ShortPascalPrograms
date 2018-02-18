{ ZADANIE 17
* Vytvorte program na výpočet minimálneho počtu bankoviek (mincí) 
* nominálnych hodnôt meny, ktorá obsahuje platidlá v hodnotách 
* 5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 5, 2, 1 zo zadanej sumy.
* }

program BankovkyMince;

uses crt;

var hodnota: longint;
	i: integer;
	hodnoty: Array [1..12] of integer = (5000, 2000, 1000, 500, 200, 100, 50, 20, 10, 5, 2, 1);

begin
	clrscr;
	
	write('Zadaj hodnotu: ');
	readln(hodnota);
	
	for i := 1 to 12 do
		begin
			writeln(hodnota div hodnoty[i]:5, ' x ', hodnoty[i]);
			hodnota := hodnota mod hodnoty[i]; 
		end;
	
	readln;
end.
