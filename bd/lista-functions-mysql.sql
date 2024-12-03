-- lista de functions no MySQL usar o help pra entender como usar cada função.

-- 1. String Functions
-- ASCII(): Retorna o código ASCII do primeiro caractere.

help ascii;
select ascii('2');
select ascii(2);
select ascii('dx');

-- BIN(): Converte um número decimal para binário.
select bin (10);

-- CHAR_LENGTH() / LENGTH(): Retorna o tamanho de uma string (em caracteres ou bytes).
select char_length('senai'), length('senai');

-- CONCAT(): Concatena strings.
select concat('senai','@','123');

-- CONCAT_WS(): Concatena strings com separador.
select concat_ws('*','senai','@','123');

-- ELT(): Retorna a string em uma posição da lista.
select elt(2,'a','b','c','d');

-- FIELD(): Retorna a posição de uma string na lista fornecida.
select field('b','a','b','c','d');

-- FIND_IN_SET(): Retorna a posição de uma string dentro de uma lista separada por vírgulas.
select find_in_set('a','a,b,c,d');

-- FORMAT(): Formata um número.
select format(13254.678,2);
help format;

-- INSTR(): Retorna a posição da primeira ocorrência de uma substring.
select instr('senai','a');

-- LEFT() / RIGHT(): Retorna os primeiros ou últimos caracteres de uma string.
select left('senai',2), right('senai',2); 

-- LOCATE(): Similar ao INSTR(), mas permite especificar uma posição inicial.
select instr('senai senai', 'a'), locate('senai senai', instr('senai senai','a')+1); 


-- LOWER() / UPPER(): Converte strings para minúsculas ou maiúsculas.
select lower('seNai'), upper('SeNai');

-- LPAD() / RPAD(): Preenche uma string no início ou no fim.
select lpad('Hi',10,0);
select rpad('Hi',10,0);

-- LTRIM() / RTRIM(): Remove espaços à esquerda ou direita.
-- TRIM(): Remove caracteres das extremidades.
select ltrim('   nome    '), rtrim('   nome    '), trim('    nome    ');

-- MID() / SUBSTRING(): Extrai parte de uma string.
select mid('1234-67-90',6,2), substring('1234-67-90',6,2);

-- REPLACE(): Substitui parte de uma string.
select replace('semai','m','n');

-- REVERSE(): Inverte a string.
select reverse('123456789');

-- SOUNDEX(): Retorna um código fonético de uma string.
-- SPACE(): Retorna uma string de espaços.
select concat('x',space(50)'x');

-- STRCMP(): Compara strings, retorna 0 quando forem iguais.
select strcmp('senai','se nai');
select strcmp('senai','senai');


-- 2. Numeric Functions
-- ABS(): Retorna o valor absoluto.
select abs(-98);

-- CEIL() / CEILING(): Arredonda para cima.
select ceil(2.9), ceiling(2.1), ceil(2.0);

-- DIV: Realiza divisão inteira.
select 16 div 8, 16/8;

-- FLOOR(): Arredonda para baixo.
select floor(10/8), floor (1.25);

-- MOD(): Retorna o resto da divisão.
select mod(3,2);

-- PI(): Retorna o valor de π.
select pi();

-- POW() / POWER(): Eleva um número à potência.
select pow(8,3);

-- RAND(): Retorna um número aleatório.
select rand();

-- ROUND(): Arredonda um número.
select round(2.5), round(2.4);

-- SIGN(): Retorna o sinal de um número (-1, 0, 1).
select sign(-89), sign(0), sign(56);

-- SQRT(): Calcula a raiz quadrada.
select sqrt(64), sqrt(9), sqrt(4);

-- TRUNCATE(): Trunca um número para o número especificado de casas decimais.
select truncate(2.636,2), truncate(2.636,1), truncate(2.636,0);


 -- 3. Date and Time Functions
-- ADDDATE() / DATE_ADD(): Adiciona um intervalo a uma data.
select adddate(curdate(),5), adddate(curdate(),-5);

-- CURDATE() / CURRENT_DATE(): Retorna a data atual.
select curdate(); 

-- CURTIME() / CURRENT_TIME(): Retorna a hora atual.
select curtime();

-- DATEDIFF(): Retorna a diferença em dias entre duas datas.
select datediff('2024-12-31','2024-12-20') ;

-- DATE_FORMAT(): Formata uma data para um formato especificado.
select date_format(curdate());

-- DAY(), MONTH(), YEAR(): Extrai partes da data.
select day(curdate()), month(curdate()), year(curdate());

-- DAYNAME(), MONTHNAME(): Retorna o nome do dia/mês.
-- set lc_time_name=pt_BR; -- modificar o idioma pra pt_BR
select dayname(curdate()), monthname(curdate());

-- DAYOFMONTH(), DAYOFWEEK(), DAYOFYEAR(): Retorna o dia do mês/semana/ano.
select dayofmonth(curdate()), dayofweek(curdate()), dayofyear(curdate());

-- EXTRACT(): Extrai partes de uma data ou hora.
select extract(day from curdate()),
		extract(month from curdate()),
		extract(year from curdate());
	
-- FROM_DAYS(): Converte dias desde o ano 0 para uma data.
select from_days(366), from_days(367);

-- HOUR(), MINUTE(), SECOND(): Extrai partes da hora.
select hour(curdate()), minute(curdate()), second(curdate()); 

-- LAST_DAY(): Retorna o último dia do mês.
-- MAKEDATE(): Cria uma data com base no ano e dia do ano.
-- MAKETIME(): Cria um tempo com base em hora, minuto e segundo.
-- NOW(): Retorna a data e hora atual.
-- STR_TO_DATE(): Converte uma string em data.
-- TIMESTAMP(): Retorna data e hora combinadas.
-- WEEK(), WEEKDAY(), WEEKOFYEAR(): Funções de semana.

-- 4. Control Flow Functions
-- IF(): Condicional simples.
-- CASE: Estrutura de múltiplas condições.
-- IFNULL(): Substitui NULL por um valor especificado.
-- NULLIF(): Retorna NULL se os valores forem iguais.

-- 5. Encryption and Hashing Functions
-- AES_ENCRYPT(), AES_DECRYPT(): Criptografia AES.
-- MD5(): Retorna o hash MD5.
-- SHA1(), SHA2(): Retorna hashes SHA.

-- 6. Miscellaneous Functions
-- VERSION(): Retorna a versão do MySQL.
-- DATABASE(): Retorna o banco de dados atual.
-- USER() / CURRENT_USER(): Retorna o usuário conectado.
-- UUID(): Gera um identificador único.alter

-- 7. Aggregate Functions
-- AVG(): Calcula a média.
-- COUNT(): Conta os registros.
-- MAX(), MIN(): Retorna o maior ou menor valor.
-- SUM(): Soma os valores.