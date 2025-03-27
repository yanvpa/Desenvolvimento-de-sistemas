create database if not exists db_hospital
charset utf8mb4 collate utf8mb4_general_ci;

use db_hospital;

create table if not exists tb_especialidade(
	id_especialidade int primary key auto_increment,
    descricao varchar(255) not null
)auto_increment=1;

create table if not exists tb_medico(
	id_medico int primary key auto_increment,
    nome varchar (255) not null,
    especialidade varchar(255) not null,
    id_especialidade int,
constraint fk_especialidade_id_especialidade foreign key (id_especialidade) references id_especialidade(tb_especialidade)
)auto_increment=1;

create table if not exists tb_paciente(
	id_paciente int,
    nome varchar(255),
    dt_consulta date not null
)auto_increment=1;

create table if not exists tb_consulta(
	id_consulta int,
    dt_consulta date not null,
    id_medico int,
    id_paciente int,
constraint fk_medico_id_medico foreign key(id_medico) references tb_medico(id_medico),
constraint fk_paciente_id_paciente foreign key(id_paciente) references tb_paciente(id_paciente)
)auto_increment=1;



	
	