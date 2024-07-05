use db;

drop table vendas;

CREATE TABLE vendas (
    id int not null auto_increment,
    valor float(10,2),
    data datetime,
    PRIMARY KEY (id)
);
delete from vendas;
insert into vendas(valor, data) values (100.00,now());
insert into vendas(valor, data) values (100.00,DATE_SUB(NOW(), INTERVAL 1 DAY));
insert into vendas(valor, data) values (33.00,DATE_SUB(NOW(), INTERVAL 2 DAY));
insert into vendas(valor, data) values (15.00,DATE_SUB(NOW(), INTERVAL 2 DAY));
insert into vendas(valor, data) values (200.00,DATE_SUB(NOW(), INTERVAL 3 DAY));
insert into vendas(valor, data) values (125.00,DATE_SUB(NOW(), INTERVAL 3 DAY));
insert into vendas(valor, data) values (133.33,DATE_SUB(NOW(), INTERVAL 4 DAY));
insert into vendas(valor, data) values (987.18,DATE_SUB(NOW(), INTERVAL 5 DAY));
insert into vendas(valor, data) values (515.35,DATE_SUB(NOW(), INTERVAL 5 DAY));
insert into vendas(valor, data) values (89.90,DATE_SUB(NOW(), INTERVAL 5 DAY));
insert into vendas(valor, data) values (237.80,DATE_SUB(NOW(), INTERVAL 5 DAY));
insert into vendas(valor, data) values (75.50,DATE_SUB(NOW(), INTERVAL 1 DAY));
insert into vendas(valor, data) values (18.0,DATE_SUB(NOW(), INTERVAL 1 DAY));

select * from vendas;

select DATE(data), sum(valor) from vendas 
group by DATE(data)
order by DATE(data) asc

select sum(valor) / 10000 * 100 AS `percentage` from vendas v 
WHERE MONTH(data) = MONTH(CURRENT_DATE())
AND YEAR(data) = YEAR(CURRENT_DATE()) 

CREATE TABLE erros (
    id int not null auto_increment,
    descricao varchar(500),
    data datetime,
    PRIMARY KEY (id)
);



