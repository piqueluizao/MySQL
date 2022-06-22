create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255),
departamento varchar(255),
primary key (id)
);

insert into tb_categorias (categoria, departamento) values ("Anti-Concepcionais","Medicamentos"), 
("Anti-Inflamatório","Genérico"),
("Vitaminas","Sáude e Bem Estar"),
("Protetores","Home Care"),
("Hidratantes","Beleza e Higiene");

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
fabricante varchar(255),
volume varchar (255),
valor decimal(6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos (nome, fabricante, volume, valor, categoria_id) values ("Hidratante Corporal","Nivea", "400ml", 22.90, 5),
("Nimesulina","EMS"," 12 comprimidos" , 5.65, 1),
("Protetor Ocular Infantil","Ever Care", "40 unidades", 24.99, 4),
("Minian", "Libbs", "21 comprimidos", 29.99, 1),
("Naproxeno Sódico","Neo Química", "10 comprimidos", 11.99, 2),
("Equilibrisse","Neo Química", "10 comprimidos", 12.99, 3),
("Prednisona","Neo Química", "10 comprimidos", 12.25, 2),
("Loção Hidratante","Dove", "400ml", 59.49, 5);

select * from tb_produtos;
select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 5 and 60;
select *from tb_produtos where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
 where tb_categorias.departamento = "Beleza e Higiene";