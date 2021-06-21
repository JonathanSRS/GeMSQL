-- Autor Jonathan da Silva
-- Criar Banco de Dados
create database db_generation_game_online;
-- Selecionar banco
use db_generation_game_online;
-- Criar tabelas

create table tb_classe(
id bigint auto_increment,
classe varchar(50),
arma varchar(50),
primary key (id)
);
-- insert
insert into tb_classe(classe,arma) values ("Caçador","Arco e Flecha");
insert into tb_classe(classe,arma) values ("Guerreiro","Espada");
insert into tb_classe(classe,arma) values ("Gladiador", "Escuto e Lança");
insert into tb_classe(classe,arma) values ("Arqueiro","Arco e Flecha");
insert into tb_classe(classe,arma) values ("Assassinos","Lamina");

create table tb_personagem(
id bigint auto_increment,
nome varchar(50),
habilidade varchar(50),
poder_Ataque int,
poder_Defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);
-- herois gregos
-- insert
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Hercules","força",5000,6500,2);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Teseu","Inteligência",2000,1500,1);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Aquiles","Imortalidade",3500,3900,3);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Ciclope","Força",4000,1500,5);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Ajax","Escuto",3000,5500,3);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Ulisses","Inteligência",2000,1500,1);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Páris","Arqueiro",1000,2500,4);
insert into tb_personagem (nome, habilidade, poder_Ataque, poder_Defesa, classe_id) values ("Artemis","Deusa",7000,5500,4);

-- exibir
select * from tb_personagem where poder_Ataque > 2000;
select * from tb_personagem where poder_Defesa between 1000 and 2000;
select * from tb_personagem where nome like "C%";
select * from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.classe_id where classe = "Arqueiro";
-- select * from tb_classe where classe = "Arqueiro";