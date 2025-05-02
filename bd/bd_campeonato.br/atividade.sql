-- 01

SET SQL_SAFE_UPDATES=0;
update evento set descricao = 'Substituição' where descricao = 'Substitution';
update evento set descricao = 'Bola na Trave' where descricao = 'Woodwork';
update evento set descricao = 'Cartão Vermelho (Segundo Cartão Amarelo)' 
where descricao = 'Cartão Vermelho (Second Yellow Card)';

-- 02

select id_partida, rodada, tm.sigla, gol_mandante, gol_visitante, tv.sigla
from partida p 
inner join time tm on id_mandante = tm.id_time
inner join time tv on id_visitante = tv.id_time
where gol_mandante is not null or rodada >= 35
order by id_partida;

UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 341;
UPDATE partida SET gol_mandante = 0, gol_visitante = 1 WHERE id_partida = 342;
UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 343;
UPDATE partida SET gol_mandante = 2, gol_visitante = 2 WHERE id_partida = 344;
UPDATE partida SET gol_mandante = 4, gol_visitante = 1 WHERE id_partida = 345;
UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 346;
UPDATE partida SET gol_mandante = 3, gol_visitante = 1 WHERE id_partida = 347;
UPDATE partida SET gol_mandante = 0, gol_visitante = 0 WHERE id_partida = 348;
UPDATE partida SET gol_mandante = 0, gol_visitante = 0 WHERE id_partida = 349;
UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 350;
UPDATE partida SET gol_mandante = 2, gol_visitante = 3 WHERE id_partida = 351;
UPDATE partida SET gol_mandante = 1, gol_visitante = 3 WHERE id_partida = 352;
UPDATE partida SET gol_mandante = 1, gol_visitante = 2 WHERE id_partida = 353;
UPDATE partida SET gol_mandante = 2, gol_visitante = 4 WHERE id_partida = 354;
UPDATE partida SET gol_mandante = 2, gol_visitante = 2 WHERE id_partida = 355;
UPDATE partida SET gol_mandante = 2, gol_visitante = 1 WHERE id_partida = 356;
UPDATE partida SET gol_mandante = 3, gol_visitante = 2 WHERE id_partida = 357;
UPDATE partida SET gol_mandante = 2, gol_visitante = 0 WHERE id_partida = 358;
UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 359;
UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 360;
UPDATE partida SET gol_mandante = 3, gol_visitante = 0 WHERE id_partida = 366;
UPDATE partida SET gol_mandante = 2, gol_visitante = 0 WHERE id_partida = 365;
UPDATE partida SET gol_mandante = 1, gol_visitante = 1 WHERE id_partida = 363;
UPDATE partida SET gol_mandante = 1, gol_visitante = 2 WHERE id_partida = 367;
UPDATE partida SET gol_mandante = 0, gol_visitante = 3 WHERE id_partida = 370;
UPDATE partida SET gol_mandante = 0, gol_visitante = 1 WHERE id_partida = 361;
UPDATE partida SET gol_mandante = 1, gol_visitante = 2 WHERE id_partida = 362;
UPDATE partida SET gol_mandante = 3, gol_visitante = 1 WHERE id_partida = 369;
UPDATE partida SET gol_mandante = 1, gol_visitante = 0 WHERE id_partida = 364 ;
UPDATE partida SET gol_mandante = 1, gol_visitante = 2 WHERE id_partida = 368;
UPDATE partida SET gol_mandante = 0, gol_visitante = 3 WHERE id_partida = 371;
UPDATE partida SET gol_mandante = 1, gol_visitante = 0 WHERE id_partida = 372;
UPDATE partida SET gol_mandante = 2, gol_visitante = 0 WHERE id_partida = 373;
UPDATE partida SET gol_mandante = 2, gol_visitante = 2 WHERE id_partida = 374;
UPDATE partida SET gol_mandante = 2, gol_visitante = 1 WHERE id_partida = 375;
UPDATE partida SET gol_mandante = 0, gol_visitante = 1 WHERE id_partida = 376;
UPDATE partida SET gol_mandante = 5, gol_visitante = 1 WHERE id_partida = 377;
UPDATE partida SET gol_mandante = 3, gol_visitante = 0 WHERE id_partida = 378;
UPDATE partida SET gol_mandante = 1, gol_visitante = 2 WHERE id_partida = 379;
UPDATE partida SET gol_mandante = 0, gol_visitante = 1 WHERE id_partida = 380;



-- 03

select  
minuto,
descricao
 from evento
 where descricao like 'gol%' and descricao not like '%anulado(var)';
  
  select * from evento;

-- 04



-- 05

select 
tb.*,
qt_amarelo + qt_vermelho qt_cartoes 
from (
select 
numero, 
nome,
sum(if(descricao like '%amarelo%',1,0))qt_amarelo,
sum(if(descricao like '%vermelho%',1,0))qt_vermelho 
from jogador j
inner join evento e on j.id_jogador = e.id_jogador 
where descricao like 'cartao%'
group by numero, nome) tb;
 

-- 06 
SET lc_time_names = 'pt_BR';
select

dayname(horario) dia ,
count(*)
from partida 
group by dia;

-- 7
select distinct
descricao,
count(*),
sum(if(minuto <= 45 , 1, 0)) p_tempo,
sum(if(minuto > 45 , 1, 0))s_tempo
from evento 
group by descricao;

-- 8
-- 08. Deseja-se saber a quantidade dos eventos:
-- "Bola na Trave", "Pênalti Perdido" , "Gol anulado (Var)" pelos clubes

select distinct
sigla ,
sum(if(Bola na Trave, 1, 0)),
sum(if(Bola na Trave, 1, 0)),
sum(if(Bola na Trave, 1, 0)),
sum(if(Bola na Trave, 1, 0))
from evento e inner join jogador j 
on e.id_jogador = j.id_jogador
inner join time t
on t.id_time = j.id_time 
 where descricao in('bola na trave', 'pênalti perdido','gol anulado(var)')
group by sigla;

select*from time;
select*from evento;