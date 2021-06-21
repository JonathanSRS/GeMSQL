-- Autor Jonathan da Silva
-- Criar Banco de Dados
create database db_pizzaria_legal;
-- seleciona Banco
use db_pizzaria_legal;
-- criar tabelas

create table tb_categoria(
id bigint primary key auto_increment,
produtos varchar(50),
acompanhamento varchar(50)
);
-- insert
insert into tb_categoria(produtos,acompanhamento) values ("Doce","Suco caixinha");
insert into tb_categoria(produtos,acompanhamento) values ("Queijo","Refrigerante");
insert into tb_categoria(produtos,acompanhamento) values ("Especial","Refrigerante");
insert into tb_categoria(produtos,acompanhamento) values ("Frango","Água");
insert into tb_categoria(produtos,acompanhamento) values ("Verduras e Legumes","Caldo de Cana");
-- 5
create table tb_pizza(
id bigint primary key auto_increment,
preco decimal(5,2),
sabor varchar(100),
Recheio_borda varchar(100),
QtdFatia int,
--
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);
-- insert
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Mussarela", 29.99,"Sem recheio",8,2);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Calabresa", 29.99,"Catupiry",8,3);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Baihana", 27.99,"Catupiry",6,3);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Bauru", 27.99,"Catupiry",6,3);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Romeu e Julieta", 32.99,"chocolate",6,1);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Palmito", 29.00,"cheddar",8,5);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Banana", 27.00,"chocolate",6,1);
insert into tb_pizza(sabor,preco,Recheio_borda,QtdFatia,categoria_id) values ("Paulista", 27.00,"cheddar",8,4);

-- 8
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where produtos = "Doce";

