













select*from usuarios;
call adicionar_usuarios('','teste@trigger.com');
select*from usuarios;

-- drop table auditoria_usuarios;
create table auditoria_usuarios (
id int not null auto_increment,
id_usuario int not null,
nome varchar(100),
email varchar(100),
operacao varchar(100),
data_evento timestamp not null,
primary key(id)
);

delimiter $$

create trigger apos_atualizar_usuario
after update on usuarios
for each row 
begin
	insert into auditoria_usuarios value (null, old.id, old.nome, old.email, 'update', now());
end$$

select * from usuarios;
update usuarios set nome = 'Bill Gates', email ='bill@microsoft.com' where id = 4;
update usuarios set nome = 'Chapollin Colorado', email ='chapollin@microsoft.com' where id = 5;
select * from usuarios;
select * from auditoria_usuarios;

delimiter $$

create trigger antes_de_excluir_usuario
before delete on usuarios 
for each row 
begin 
	if old.id= 1 then 
		signal sqlstate '45000'
        set message_text ='Não é pertmitido excluir o usuário administrador';
    end if;
end$$

delimiter ;

delete from usuarios where id=1;
    