create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
  id_classe int not null auto_increment,
  nome_classe varchar(255) not null,
  arma_classe varchar(255) not null,
  primary key(id_classe)
); 


create table tb_personagem(
id_personagem int not null auto_increment,
nome_personagem varchar(255) not null,
poder_ataque int,
poder_defesa int,
fk_classe int,
primary key(id_personagem),
foreign key(fk_classe) references tb_classe (id_classe)

);

insert into tb_classe (nome_classe, arma_classe)
values
("Persa", "Espada pequena dupla"),
("Espartano", "Lança e escudo"),
("Romano", "Espada de duas mãos"),
("Asteca", "Arco e flecha"),
("Carioca", "Fuzil");

insert into tb_personagem (nome_personagem, poder_ataque,
podere_defesa, fk_classe)
values
("Robson", 100, 150, 4),
("Duaith", 500, 500, 3),
("Tales", 400, 600, 1),
("Prosival", 600, 400, 2),
("Eduardo", 1000, 1000, 5),
("Vitór", 450, 400, 4),
("Probinson", 300, 350, 3),
("Dagoberto", 250, 300, 2);


select * from tb_personagem
where poder_ataque > 400;

select * from tb_personagem 
where poder_defesa between 200 and 800;

select * from tb_personagem
where nome_personagem like 'P%';

select nome_personagem, nome_classe, arma_classe
from tb_personagem
inner join tb_classe on tb_personagem.fk_classe = tb_classe.id_classe;

select nome_personagem, nome_classe, arma_classe
from tb_personagem
inner join tb_classe on tb_personagem.fk_classe = tb_classe.id_classe
where nome_classe = 'Espartano';







