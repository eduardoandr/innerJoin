create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
    id_categoria int not null auto_increment,
    carne_boi_categoria varchar(255),
    carne_porco_categoria varchar(255),
    primary key (id_categoria)
);

create table tb_produto (
	id_produto int not null auto_increment,
    corte_produto varchar(255),
    valor_produto decimal,
    fk_categoria int,
    primary key (id_produto),
    foreign key (fk_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (carne_boi_categoria, carne_porco_categoria)
values
("Costa bovina", "Costa suína"),
("Lado bovina", "Lado suína"),
("Barriga bovino", "Barriga suína"),
("Fronte bovino","Fronte suíno");

insert into tb_produto (corte_produto, valor_produto, fk_categoria)
values
("Alcatra", 45.99, 1),
("Picanha", 59.99, 2),
("Toucinho", 24.99, 3),
("Contra filé", 49.99, 4);

select * from tb_produto
where valor_produto > 48.00;

select * from tb_produto
where valor_produto between 24.00 and 50.00;

select * from tb_produto
where corte_produto like 'C%';

select nome_produto, carne_boi_categoria, carne_porco_categoria
from tb_produto
inner join tb_categoria on tb_produto.fk_categoria = tb_categoria.id_categoria;

select nome_produto, carne_boi_categoria, carne_porco_categoria
from tb_produto
inner join tb_categoria on tb_produto.fk_categoria = tb_categoria.id_categoria
where nome_categoria = 'Lado suino';




	