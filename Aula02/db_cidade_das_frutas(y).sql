-- Autor Jonathan da Silva
-- Criar Banco de Dados
create database db_cidade_das_frutas;
-- selecionar
use db_cidade_das_frutas;
-- Criar tabela
create table tb_categoria(
id bigint primary key auto_increment,
categoria varchar(50),
descricao varchar(100)
--
);
-- insert
insert into tb_categoria(categoria,descricao) values("Legumes","Eles são divididos, basicamente, em: frutos, tubérculos, leguminosas, raízes, oleaginosas e cereais.");
insert into tb_categoria(categoria,descricao) values("Verduras","parte comestível é folhosa");
insert into tb_categoria(categoria,descricao) values("Frutas","Sabor adocicado");
insert into tb_categoria(categoria,descricao) values("Flores","estrutura reprodutora característica das plantas angiospérmicas");
insert into tb_categoria(categoria,descricao) values("Hortaliça","alimento cultivado em horta");
-- 5

create table tb_produto(
id bigint primary key auto_increment,
nome varchar(50), 
preco float,
pesokg decimal,
vitamina varcharacter(1),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);
-- insert
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Cenoura",1.73,1,'A',1);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Manga",1.70,1,'A',3);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Laranja",1.75,1,'C',3);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Goiaba",3.75,1,'C',3);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Couve",10.90,1,'E',2);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Abacate",3.41,1,'E',3);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Banana",1.25,1,'B',3);
insert into tb_produto(nome,preco,pesokg,vitamina,categoria_id)values("Espinafre",4.50,1,'B',2);
-- 8

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "C%";
select *from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on 
tb_categoria.id = tb_produto.categoria_id where categoria = "frutas";