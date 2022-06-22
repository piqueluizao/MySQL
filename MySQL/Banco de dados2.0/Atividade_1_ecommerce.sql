CREATE database db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos( 
	id bigint auto_increment,
    nome varchar(300),
    genero varchar(15),
    categoria varchar(70),
    preco decimal(9,2),
    primary key (id)
);

INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça cargo", "Feminino", "Calça", 120.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Blusa em algodão Manga Curta", "Feminino", "Blusa", 59.99);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça jeans", "Masculino", "Jeans", 79.90);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Camiseta xadrez", "Unissex", "Básico", 119.90);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Bermuda algodão", "Masculino", "Bermuda", 69.90);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Calça skinny jeans", "Unissex", "Jeans", 89.90);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Top Esportivo", "Feminino", "Esporte", 49.90);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("Boné", "Masculino", "Acessórios", 39.90);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 150.00 WHERE id = 6;