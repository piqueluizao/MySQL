create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tamanho char (2),
tipo varchar(15),
primary key (id)
);

insert into tb_categorias (tipo, tamanho) values ("Salgado","P"),
("Salgado","G"),
("Salgado","M"),
("Doce","M"),
("Doce","P");

select *from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
valor decimal (7,2),
sabor varchar(255),
massa varchar(255),
acompanhamentos varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_pizzas (valor, sabor, massa,  acompanhamentos, categoria_id) values (99.99,"Atum c/ queijo","grossa","sim",2), 
(85.00,"Calabresa c/ queijo", "grossa","não",2),
(47.56,"Frango c/ catupiry", "fina","sim",1),
(65.56,"Chocolate c/ banana","fina","não",5),
(89.99,"Chocolate c/ morango","grossa","não",4),
(98.99,"Portuguesa","grossa","sim",2),
( 51.99,"Chocolate c/ morango","grossa","não",5),
( 54.99,"Chocolate c/ M&M's","fina","não",5);

select * from tb_pizzas;
select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor between 50 and 100;
select *from tb_pizzas where sabor like "%M%";

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id
 where tb_categorias.tipo = "Doce";