Feature: Numeros Romanos
In order to convertir numeros romanos
As a usuario
I want to convertir numeros romanos

Scenario Outline: Convertir <arabigo>
	Given un conversor
	When le paso <arabigo>
	Then lo convierte a <romanos>

	Examples:
	| arabigo | romanos |
	| 1		  | I 	    |
	| 2		  | II 	    |
	| 3		  | III     |
	| 4		  | IV 	    |