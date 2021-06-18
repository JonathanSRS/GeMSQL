-- Autor Jonathan da Silva
-- Banco de Dados
create database db_registroAlunos;
-- selecionar
use db_registroAlunos;
-- Tabela
create table tb_Alunos(
RA bigint primary key auto_increment,
nome varchar(50) not null,
idade int not null,
habilidade varchar(50),
nota1 int, nota2 int, nota3 int,
-- Calculando a média
media  float AS ((nota2 + nota3 + nota1)/3.0) 
);

insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("Han",20,"Persistência",5,4,6);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("Luke",16,"Orientação ao Futuro",7,8,10);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("Leia",16,"Proatividade",8,8,10);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("C3PO",1000,"Comunicação",10,9.9,10);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("R2D2",900,"Trabalho em equipe",10,10,10);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("Rey",16,"Mentalidade de Crescimento",9,9,8);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("Holdo",35,"Resposabilidade Pessoal",10,8,8);
insert into tb_Alunos(nome,idade,habilidade,nota1,nota2,nota3)value("Hux",26,"Atenção ao detalhe f",0,7,8);

select * from tb_Alunos where media >= 7.0;
select * from tb_Alunos where media <= 7.0;

select * from tb_Alunos;

update tb_Alunos set nota1 = 7.5 where RA = 1;
-- delete from tb_Alunos  where RA = 1;
drop database db_registroAlunos;