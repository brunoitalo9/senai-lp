use campeonatobrasileiro;

select * from estadio;
select * from time;
select * from partida;
select * from jogador;
select * from evento;

select * from vw_mandante;
create view vw_mandante as (
select 
sigla,
sum(pontos) pontos,
sum(if(pontos = 3, 1, 0))vitoria,
sum(if(pontos = 1, 1, 0))empate,
sum(if(pontos = 0, 1, 0))derrote,
count(*) qt_partidas,
sum(gol_mandante) gols,
sum(gol_visitante) gols_sofridos,
sum(gol_mandante - gol_visitante) saldo_gols  
 from(
select
	sigla,
	gol_mandante, 
	gol_visitante ,
    -- como eu sei quantos pontos o time ganhou em cada partida
    if(gol_mandante > gol_visitante, 3 , if(gol_mandante = gol_visitante, 1, 0)) pontos
 from partida p 
inner join time t on p.id_mandante = t.id_time
where gol_mandante is not null and gol_visitante is not null
) tb
group by sigla);



select * from vw_visitante;
create view vw_visitante as (
select 
sigla,
sum(pontos) pontos,
sum(if(pontos = 3, 1, 0))vitoria,
sum(if(pontos = 1, 1, 0))empate,
sum(if(pontos = 0, 1, 0))derrote,
count(*) qt_partidas,
sum(gol_visitante) gols,
sum(gol_mandante) gols_sofridos,
sum(gol_visitante - gol_mandante) saldo_gols  
 from(
select
	sigla,
	gol_visitante, 
	gol_mandante,
    -- como eu sei quantos pontos o time ganhou em cada partida
    if(gol_visitante > gol_mandante, 3 , if(gol_visitante = gol_mandante, 1, 0)) pontos
 from partida p 
inner join time t on p.id_visitante = t.id_time
where gol_visitante is not null and gol_mandante is not null
) tb
group by sigla);


create view classificacao as (
select 
	sigla 

