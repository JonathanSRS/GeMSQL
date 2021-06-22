-- Autor Jonathan da Silva
-- Criar Banco de Dados
create database db_farmacia_do_bem;
-- selecionar
use db_farmacia_do_bem;
-- criar tabela
create table tb_categoria(
id bigint primary key auto_increment,
categoria varchar(50),
descricao varchar(100)
--
);
-- insert
insert into tb_categoria(categoria,descricao)values("Cosméticos","é aquilo que é relativo à beleza humana. Alguns produtos de higiene pessoal");
insert into tb_categoria(categoria,descricao)values("Remédios","qualquer substância ou recurso utilizado para obter cura ou alívio");
insert into tb_categoria(categoria,descricao)values("Beleza","");
insert into tb_categoria(categoria,descricao)values("Bebê","Fraldas, carrinhos, bebê conforto, andador e tudo para o seu bebê");
insert into tb_categoria(categoria,descricao)values("Suplementos","são preparações destinadas a complementar a dieta e fornecer nutrientes");
-- 5
create table tb_produto(
id bigint primary key auto_increment,
categoria_id bigint,
nome varchar(50),
preco decimal,
marca varchar(50),
Qtd int,
--
--
foreign key (categoria_id) references tb_categoria(id)
);
-- insert
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Frauda",29.90,"Pampers",100,4);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Ninho Fases 1",34.90,"Ninho",50,4);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Escova Profissional",44.90,"Triss",25,3);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Lápis de Olho",37.90,"Doralgina",80,3);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Complemento Alimentar Nutren",112.99,"Nutren",200,5);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Thermagre Day Nutrilibrium",83.49,"Day",75,5);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("Paracetamol",8.50,"Paracetamol",100,2);
insert into tb_produto(nome,preco,marca,Qtd,categoria_id)values("NOVALGINA",14.99,"NOVALGINA",100,2);
-- 8
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60; 
select * from tb_produto where nome like "B%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where categoria = "Beleza";