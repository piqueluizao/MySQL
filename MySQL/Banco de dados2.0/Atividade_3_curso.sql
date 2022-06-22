create database db_cursos_da_minha_vida;

use db_cursos_da_minha_vida;

create table tb_categorias (
id bigint auto_increment,
categoria varchar(255),
nivel varchar(255),
primary key(id)
);
create table tb_cursos (
id bigint auto_increment,
nome varchar (255),
valor decimal(9,2),
descricao varchar(3000),
certificado boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias (categoria, nivel) values 
("Desenvolvimento Pessoal e Profissional","Iniciante"), 
("Metodologias de Aprendizagem","Intermediário"), 
("Programação","Avançado"),
("Negócios e Inovação","Avançado"),
("Produtividade","Intermediário");

select*from tb_categorias;

insert into tb_cursos (nome, valor, descricao, certificado, categoria_id) values 
("Introdução ao Scratch: Linguagem de Programação na Computação Criativa", 120.99, "Neste curso, você vai ter a oportunidade de conhecer os principais conceitos e comandos da linguagem, a comunidade Scratch e seu ambiente de programação. Você vai aprender a criar animações e jogos simples e ver como é possível começar a programar no Scratch, tendo como base projetos de outros usuários da comunidade.", false, 2),
("HTML e CSS", 129.99, "Neste curso, você aprenderá tudo o que é necessário para produzir um website utilizando as linguagens HTML5 e CSS. Por meio das várias demonstrações disponibilizadas, você terá a oportunidade de ver como codificar um website com layout moderno, agradável e tecnologia responsiva.Se você já possui conhecimentos iniciais em HTML e deseja ver, na prática, como aplicar recursos mais avançados, este é o curso indicado!", true, 3),
("Microsoft Office 365 - Conhecendo o Planner", 39.99, "Este conteúdo é composto de sete vídeos, nos quais você aprenderá algumas funcionalidades da ferramenta Planner, para que possa trabalhar, de maneira eficiente, com a organização do trabalho em equipe.", false, 2),
("Empreendedorismo e Inovação", 49.99, "Neste curso são apresentados conceitos importantes sobre a postura empreendedora, os processos de inovação e identificação de oportunidades, além das principais características de um Plano de Negócios.", true, 4),
("Linguagem de Programação C#",  899.99, "Neste curso, você aprenderá conceitos avançados sobre a utilização da linguagem de programação C#, como classes, métodos, programação orientada a objeto, construtores, elementos estáticos, parâmetros, atributos e enumerações.", true,  3),
("Comunicação e Expressão", 59.99 , "Você vai ver como a comunicação acontece, quais são seus elementos, os tipos de comunicação e que as regras gramaticais foram criadas para que as pessoas tenham um parâmetro de como escrever e falar uma língua, evitando ruídos na comunicação", true, 1),
("Microsoft Excel 2016", 79.99, "Neste curso você aprenderá a criar modelos de pastas de trabalho, usar funções e a inserir elementos gráficos em suas planilhas eletrônicas.", true, 4),
("Inteligência Artificial e o Novo Contexto da Cultura Digital",  569.99, "Este curso apresenta um panorama do novo contexto da cultura digital, fortemente marcado por técnicas de inteligência artificial (modelos estatísticos de probabilidade).O conteúdo aborda, também, o que são direitos digitais, fala sobre a Lei de Acesso à Informação (LAI), o Marco Civil da Internet, a Lei Geral de Proteção de Dados Pessoais (LGPD) e traz materiais de referência para trabalhar o tema em sala de aula.O conteúdo é composto por quatro módulos, contendo vídeos, exemplos práticos e ilustrações.", true, 4);

select*from tb_cursos;
select*from tb_cursos where valor > 500;
select*from tb_cursos where valor between 600 and 1000;
select*from tb_cursos where nome like  "%C%";
select*from tb_categorias
inner join tb_cursos on tb_cursos.categoria_id = tb_categorias.id; 
select*from tb_categorias where nivel like "%Avançado%";