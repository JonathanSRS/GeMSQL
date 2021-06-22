-- Autor Jonathan da Silva
-- Criar Banco de Dados
create database db_cursoDaMinhaVida;
-- Selecionar banco
use db_cursoDaMinhaVida;
-- Criar tabelas

create table tb_diciplina(
id bigint auto_increment,
professores varchar(50),
diciplina varchar(50),
primary key (id)
);
-- insert
insert into tb_diciplina(professores,diciplina) values ("Francalino","Tegnologia");
insert into tb_diciplina(professores,diciplina) values ("Debora","Línguas");
insert into tb_diciplina(professores,diciplina) values ("Thiago", "Administração");
insert into tb_diciplina(professores,diciplina) values ("Nath Arcuri","Contabilidade");
insert into tb_diciplina(professores,diciplina) values ("Enfermagem","Shaun Murphy ");

create table tb_curso(
id bigint auto_increment,
curso varchar(50),
periodo varchar(50),
semestre int,
preco float,
diciplina_id bigint,
primary key (id),
foreign key (diciplina_id) references tb_diciplina(id)
);
-- herois gregos
-- insert
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("HTML","Tarde",1,55.99,1);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("CSS","Manhã",1,45,1);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("Inglês","Noite",5,690,2);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("Hardware","Noite",2,150,1);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("Java","Manhã",1,550,1);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("Consultoria","Tarde",3,1500,3);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("Auditoria","Noite",5,250,3);
insert into tb_curso (curso, periodo, semestre, preco, diciplina_id) values ("Cefis","Tarde",2,550,4);

-- exibir
select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where curso like "J%";
select * from tb_curso 
inner join tb_diciplina on tb_diciplina.id = tb_curso.diciplina_id;
select * from tb_curso inner join tb_diciplina 
on tb_diciplina.id = tb_curso.diciplina_id where diciplina = "Tegnologia";