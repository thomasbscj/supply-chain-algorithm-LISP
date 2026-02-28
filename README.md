EN: Supply chain stock prevision algorithm in LISP.
PT: Algorirmo de previsão de estoque de suprimentos em LISP.

Rule: wheighted average
Four previous months have wheight 5, 4, 3, 2, respectively.
In the previous years, the corresponding month has wheights 6, 5, 4, 3, 2, 1, 1... 
In the previous three years, the four previous months to the corresponding month have wheight 4,3,2; 3, 2, 1; 1,1,1
If any months has more or less than average +- 2.3*standard-deviation, it has wheight 0
Every other month has wheight 1. Past the sixth year, it is diminished by 10% each year.

Regra: média ponderada:'
Os últimos quatro meses têm peso 5, 4, 3, 2, respectivamente. 
Nos anos anteriores, o mês correspondente ao atual tem peso 6, 4, 3, 2, 1, 1..., etc 
Os outros três meses anteiores tem peso 4, 3, 2; 3, 2, 1; 1 ,1 ,1 até três anos pra trás.
Se qualquer mês tiver valor da média +- 2.3*desvio-padrão, ele deverá ter peso 0
Todos os demais meses têm peso 1. A partir de seis anos para trás, o peso diminui em 10% a cada ano