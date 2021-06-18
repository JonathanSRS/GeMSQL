-- Autor Jonathan da Silva
-- Banco de Dados
create database e_commerce;
-- selecionar
use e_commerce;
-- Tabela
create table tb_produtos(
-- atributos
cod bigint not null,
nome varchar(200) not null,
preco float not null,
categoria varchar(10),
fabricante varchar(50) not null,
Ddata_fabri varchar(50),
primary key (cod)
);

insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(7896004,"Batata chips",12.00,"Alimentos","Pringles","04/03/2021");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(978885,"Dicionario",19.99,"Papelaria","Nova","02/05/1997");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(978852,"Admirável Mundo novo",30.00,"Papelaria","Biblioteca Azul","01/03/1932");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(843591,"Fonte Alimentação",50.00,"Eletronico","Corsair","12/09/2013");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(123456,"Conjuto de Panelas",20.99,"Cozinha","Tramontina","20/06/2018");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(78960,"Arroz",6.48,"Alimentos","tio joão","20/01/2019");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(9896004,"Celular",500.01,"Eletronico","Nokia","04/03/2022");
insert into tb_produtos(cod,nome,preco,categoria,fabricante,Ddata_fabri)value(7996004,"Calice ed limitado",1000.00,"cozinha","HP","30/07/1980");

select * from tb_produtos where preco >= 500;
select * from tb_produtos where preco <= 500;

select * from tb_produtos;

update tb_produtos set nome = "Arroz 1k" where cod = 78960;


