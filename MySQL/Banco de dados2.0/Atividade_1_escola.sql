Create database db_escola;

USE db_escola; 

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(300),
    data_nascimento date,
    turma int,
    nota decimal(9,2),
    primary key (id)
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Igor Pires", "1998-07-06", 1, 6.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Vinny Santa Fé", "1967-09-18", 1, 7.90);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Dionisio", "1999-02-19", 2, 4.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Jão", "2000-08-16", 2, 5.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Lauren Jauregui", "2002-03-19", 2, 7.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Camila Cabello", "2001-10-17", 3, 6.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Rupi Kaur", "1987-12-09", 3, 3.80);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Amanda Lovelace", "1995-01-12", 3, 5.00);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 5.50 WHERE id = 7;

delete from tb_estudantes where id = 2;
delete from tb_estudantes where id = 3;

