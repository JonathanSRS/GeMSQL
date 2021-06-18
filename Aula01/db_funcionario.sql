-- Autor Jonathan da Silva
-- Banco de Dados
create database db_RH;
-- selecionar
use db_RH;
-- Tabela
create table tb_funcionarios(
-- atributos
cod bigint auto_increment,
nome varchar(100) not null,
idade int not null,
cargo varchar(100) not null,
salario float not null,
primary key (cod)
);

insert into tb_funcionario(nome, idade, cargo, salario)value("Paulo",29,"Caixa",2000);
insert into tb_funcionario(nome, idade, cargo, salario)value("Elisângela",31,"Repositor",1700);
insert into tb_funcionario(nome, idade, cargo, salario)value("Carlos",22,"Atendente",1400);
insert into tb_funcionario(nome, idade, cargo, salario)value("Patricia",26,"Gerente",2500);
insert into tb_funcionario(nome, idade, cargo, salario)value("Daniela",30,"Motorista",1800);

select * from tb_funcionario where salario >= 2000;
select * from tb_funcionario where salario <= 2000;

update tb_funcionario set salario = 2100 where nome = "Daniela";



