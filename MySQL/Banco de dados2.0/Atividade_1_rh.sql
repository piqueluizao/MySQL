CREATE DATABASE db_rh; 

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(300),
    data_nascimento date,
    cargo varchar(70),
    salario decimal(7,2),
    primary key (id)
);

INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Juliana Landolfi", "1998-01-17", "Desenvolvedora", 5000.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Denise Souza", "1967-04-25", "Supervisora", 3000.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Ellen Mariana", "2003-09-13", "Estagiário", 1800.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Gabrielly Soares", "2003-05-07", "Estagiário", 1800.00);
INSERT INTO tb_colaboradores (nome, data_nascimento, cargo, salario) VALUES ("Milena Pincerni", "2002-01-24", "Gerente", 3000.00);


SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 3;

delete from tb_colaboradores where id = 6;