create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
classe varchar (200),
lvl_max int ,
primary key (id)
);

insert into tb_classes (classe,lvl_max) values ("Guerreiro/Cavaleiro", "30"),
("Bárbaro/Berserker", "40"),
("Arqueiro/Ranger", "70"),
("Bruxo/Elementalista", "55"),
("Assassino/Ninja", "60"),
("Sacerdote/Curandeiro", "74"), 
("Paladino/Templário", "31"),
("Feiticeiro/Necromante", "97"),
("Xamã/Druida", "140"),
("Monge/Lutador", "58"),
("Bardo/Dançarina", "64");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome_personagem varchar (70),
defesa int,
ataque int,
caracteristicas varchar(800),
personagens_id bigint not null,
primary key (id),
foreign key (personagens_id) references tb_classes(id)
);

insert into tb_personagens (nome_personagem,  defesa, ataque, caracteristicas, personagens_id)  values ("Cedrico Diggorry","5000","3000","Alta resistência;
Combate corporal com espadas, lanças, machados, maças e escudos;
Vestimentas e armaduras pesadas;
Causam muito dano em alguns jogos",1),
("Thor","2500","5000","Média resistência;
Combate corporal com espadas, machados e maças, geralmente de duas mãos;
Vestimentas e armaduras pesadas;
Até podem causar muito dano em alguns jogos.",2),
("Bartolomeu Crouch","1000","4987","Baixa resistência;
Combate a distância com arco e variedade de flecha;
Vestimentas e armaduras médias;Podem vir acompanhados de animais (pets) que o ajudam em batalha.",3),
("Alastor Moody","1800","6700","Baixa resistência;
Combate a distância com magias de variados elementos;
Vestimentas e armaduras leves;
Geralmente possuem grande versatilidade de builds, permitindo que existam personagens muito diferentes apesar de serem da mesma classe.",4),
("Ellora James","1700","6000","Baixa resistência mas com muitos meios de não ser atingido;
Combate corporal com adagas, katares, punhais e outras armas de punho;
Vestimentas e armaduras médias;
Costumam destruir seus oponentes em poucos segundos, mas podem sofrer contra classes resistentes ou capazes de causar atordoamento.",5),
("Dante ","5200","1700","Alta resistência;
Foco principal em dar suporte aos membros do grupo. Ganha experiência compartilhada;
Combate a distância com magias de luz ou da natureza. Às vezes podem usar maçãs para atacar de perto;
Vestimentas e armaduras leves;
Apesar do altíssimo grau de dependência, costumam ser indispensáveis em grupos e raids de alto nível.",6),
("Aristóteles","4900","3900","Alta resistência;
Combate corporal com espadas, machados, lanças, maças e escudos. Também podem ter magias sagradas que causam dano à distância;
Vestimentas e armaduras pesadas;
Até podem causar muito dano em alguns jogos;
Costumam ter grande versatilidade de builds, permitindo que existam personagens muito diferentes apesar de serem da mesma classe.",7),
("Freya","1400","3600","Baixa resistência;
Combate a distância com magias negras e invocação de minions que os defendam;
Vestimentas e armaduras leves;
Gameplay pode ser focado em debuffs;
Costumam ter ferramentas de auto-cura.",8),
("Fenrir","3400","4500","Média resistência;
Combate corporal com suas diferentes formas de animais ou a distância através de magias da natureza;
Vestimentas e armaduras médias;
Costumam ter grande variedade de builds, podendo ser mais focados em suporte ou no aspecto ofensivo.",9),
("Gary Oldman","3000","3900","Média resistência;
Combate corporal com os punhos, soco inglês e manoplas, mas também podem usar maças e manguais;
Vestimentas e armaduras leves;
Podem ter buffs para aumentar sua resistência;
Costumam ter mecânicas exclusivas como golpes carregados, contra-ataques e combos.",10),
("Natalie Portman","1450","4790","Baixa resistência;
Combate a distância com arco e flecha;
Vestimentas e armaduras médias;
Habilidades de suporte utilitário como buffs e debuffs em área.",11);

select * from tb_personagens;
select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select *from tb_personagens where nome_personagem like "%C%";

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.personagens_id
 where tb_classes.classe = "Bruxo/Elementalista";

