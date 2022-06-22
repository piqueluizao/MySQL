create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
fazenda varchar(255),
qualidade varchar(255),
primary key (id)
);

insert into tb_categorias (fazenda, qualidade) values ("Fazenda da Juliana","Ruim"),
("Fazenda do Harry","Boa"),
("Fazenda do Julian","Péssima"),
("Fazenda da Betina","Média"),
("Fazenda da Michelli","Ótima");

select*from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
peso decimal(6,2),
valor decimal(6,2),
dtvalidade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos (nome, peso, valor, dtvalidade, categoria_id) values ("Cebola", 175.30, 75.99, "2022-12-09", 4),
("Pimentão", 175.30, 45.50, "2022-04-15", 3),
("Alface", 990, 500.99, "2022-03-09", 2),
("Cebolinha", 40.12, 90.60, "2022-01-19", 1),
("Milho", 440.70, 300.99, "2022-11-12", 4),
("Café", 550.30, 900.10, "2022-05-24", 5),
("Batata", 70.50, 80.09, "2022-08-23", 2),
("Tomate", 200, 56.89, "2022-10-27", 2);

select*from tb_produtos;
select * from tb_produtos where valor > 50;
select * from tb_produtos where valor between 50 and 150;
select *from tb_produtos where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;
select *from tb_categorias where qualidade like "%ima%";