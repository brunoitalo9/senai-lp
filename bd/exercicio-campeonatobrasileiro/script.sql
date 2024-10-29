show databases; --visualizar as databases

create databases campeonatobrasileiro; --criar a base de dados

status; --visualizar principais configurações 

use campeonatobrasileiro; -- entrar em uma base de dados 

--criar uma nova tabela
create table id_estadio 
    id_estadio int primary key auto_increment,
     nome varchar(150) not null,
     endereço varchar(150),
     capacidade int);

     show tables; --mostra as tabelas de uma base de dados 

     desc estadio; --descreve a estrutura de uma tabela 