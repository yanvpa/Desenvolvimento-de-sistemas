create database if not exists db_empresa 
charset utf8mb4 collate utf8mb4_general_ci;

use db_empresa;

create table if not exists tb_funcionarios(
	id int primary key auto_increment,
    nome varchar(100) not null,
    cargo varchar(50) not null,
    salario float(10,2) not null,
    dt_admissao date
)auto_increment=1;

insert into tb_funcionarios (nome, cargo, salario, dt_admissao) value ("Pedro", "chefe", "5400,00", '2006-04-29');
insert into tb_funcionarios (nome, cargo, salario, dt_admissao) values ("Lucas", "estagiario","1250,00", 2015-09-07);
insert into tb_funcionarios (nome, cargo, salario, dt_admissao) values ("Carlos", "estagiario","1250,50", 2014-04-11);

select*from tb_funcionarios;

ALTER TABLE tb_funcionarios ADD COLUMN dt_admissao DATE;

truncate table tb_funcionarios;
