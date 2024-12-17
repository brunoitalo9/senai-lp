DELIMITER $$

CREATE FUNCTION valor_aleatorio(min int, max int)
RETURNS int
NOT DETERMINISTIC 
READS SQL DATA
BEGIN
	RETURN round(rand()*(max-min))+min;
END$$

DELIMITER ;


-- 02
delimiter $$

create function data_br(periodo date)
returns varchar(100)
deterministic
begin 
	return date_format(periodo, '%d/%m/%y');
end$$

 delimiter ;
select data_br('2024-12-25'), data_br(curdate());

-- 03
delimiter $$

create function signo (periodo date)
returns varchar(20)
deterministic 
begin 
	if date_format(periodo,'%m/%d') between '21/03' and '19/04' then 
    return 'Áries ';
    end if;
    if date_format(periodo,'%m/%d') between '20/04' and '20/05' then 
    return 'Touro';
    end if;
    if date_format(periodo,'%m/%d') between '21/05' and '20/06' then 
    return 'Gêmeos';
    end if;
    if date_format(periodo,'%m/%d') between '21/06' and '22/07' then 
    return 'Câncer';
    end if;
    if date_format(periodo,'%m/%d') between '23/07' and '22//08' then 
    return 'Leão';
    end if;
    if date_format(periodo,'%m/%d') between '23/08' and '22/09' then 
    return 'Virgem';
    end if;
    if date_format(periodo,'%m/%d') between '23/09' and '22/10' then 
    return 'Libra';
    end if;
    if date_format(periodo,'%m/%d') between '23/10' and '21/11' then 
    return 'Escorpião';
    end if;
    if date_format(periodo,'%m/%d') between '22/11' and '21/12' then 
    return 'Sargitário';
    end if;
    if date_format(periodo,'%m/%d') between '22/12' and '19/01' then 
    return 'Capricórnio';
    end if;
    if date_format(periodo,'%m/%d') between '20/01' and '18/02' then 
    return 'Aquário';
    end if;
    if date_format(periodo,'%m/%d') between '19/02' and '20/03' then 
    return 'Peixes';
    end if;
end$$

    
select signo('2024-04-01');
select signo('2024-05-01');
select signo('2024-06-01');
select signo('2024-07-01');
select signo('2024-08-01');
select signo('2024-09-01');
select signo('2024-10-01');
select signo('2024-11-01');
select signo('2024-12-01');
select signo('2024-01-01');
select signo('2024-02-01');
select signo('2024-03-01');
