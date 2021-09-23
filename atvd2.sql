create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
	id_categoria int not null auto_increment,
    nome_categoria varchar(255),
	preco_categoria decimal,
    primary key (id_categoria) 
);

create table tb_pizza (
    id_pizza int not null auto_increment,
    nome_pizza varchar(255),
    sabor_pizza varchar(255),
    fk_categoria int,
    primary key(id_pizza),
    foreign key(fk_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (nome_categoria, preco_categoria)
values
("Broto", 12.99),
("Média", 20.99),
("Comum", 27.99),
("XG", 34.99),
("XXG", 42.99);

insert into tb_pizza (nome_pizza, sabor_pizza, fk_categoria)
values
("Pizza trêm", "Calabresa", 5),
("Pizza social", "Mussarela", 4),
("Pizza da alegria", "Frango catupiry", 3),
("Pizza Romântica", "Brócolis com bacon", 2),
("Pizza individual", "Portuguesa", 1);

select * from tb_categoria
where preco_categoria > 30.00;

select * from tb_categoria
where preco_categoria between 23.00 and 43.00;

select * from tb_categoria
where nome_categoria like 'X%';


select nome_pizza, nome_categoria, preco_categoria 
from tb_pizza
inner join tb_categoria on tb_pizza.fk_categoria = tb_categoria.id_categoria;

select nome_pizza, nome_categoria, preco_categoria 
from tb_pizza
inner join tb_categoria on tb_pizza.fk_categoria = tb_categoria.id_categoria,
where nome_categoria = 'broto';