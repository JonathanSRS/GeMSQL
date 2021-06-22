-- Autor Jonathan da Silva
-- Criar Banco de Dados
create database db_construindo_a_nossa_vida;
-- selecionar
use db_construindo_a_nossa_vida;
-- Criar tabelas
create table tb_departamento(
id bigint primary key auto_increment,
departamento varchar(50),
descricao varchar(200)
--
);
-- insert
insert into tb_departamento(departamento,descricao) values("Hidraúlica","são materiais artificiais que são obtidos a frio por um processo de hidratação de materiais");
insert into tb_departamento(departamento,descricao) values("Ferramentas","utilizado na indústria devido à combinação de dureza a temperatura ambiente, dureza a quente, resistência ao desgaste e a tenacidade, obtida através de uma variação da composição química.");
insert into tb_departamento(departamento,descricao) values("material","aquilo com que os corpos são constituídos");
insert into tb_departamento(departamento,descricao) values("Eletrica","peças que permitem a transmissão da energia elétrica");
insert into tb_departamento(departamento,descricao) values("Decoração","omposição de um ambiente de modo a fazer com que seus elementos estejam harmonicamente dispostos");
-- 5
create table tb_produtos(
id bigint primary key auto_increment,
nome varchar(100),
preco decimal,
Qtd int,
marca varchar(100),
--
departamento_id bigint,
foreign key(departamento_id) references tb_departamento(id)
);
-- insert
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Cimento",50,100,"Cimed",3);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Betoneira",3649,2,"CSM",3);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Chuveiro",96.90,50,"Lorenzetti",1);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Torneira",354.90,30,"Sensea",1);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Cabo Cftv",39.90,200,"Speedlan",4);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Nobreak",467,125,"SMS",4);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Furadeira",498,500,"Makita",2);
insert into tb_produtos(nome,preco,Qtd,marca,departamento_id) values("Capacho",39.90,1000,"Inspire",5);
-- 8

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60; 
select * from tb_produtos where nome like "B%";
select * from tb_produtos inner join tb_departamento on tb_departamento.id = tb_produtos.departamento_id;
select * from tb_produtos inner join tb_departamento on tb_departamento.id = tb_produtos.departamento_id 
where departamento = "Hidraulica";