-- comentário

-- Criar um banco de dados

-- Linguagem SQL

-- DDL , DML, DQL

-- DDL (Data Definition Language)
-- CREATE , DROP , ALTER
-- criar o banco de dados
DROP DATABASE if exists salaoestilorei; -- ddl
CREATE DATABASE if not exists salaoestilorei; -- ddl
-- usar o banco de dados
USE salaoestilorei;
-- criar a tabela
CREATE TABLE cliente(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    telefone char(13),
    email varchar(80) UNIQUE NOT NULL,
    senha varchar(255) NOT NULL
);
describe cliente;
-- DML
INSERT INTO cliente(nome,
					telefone,
                    email,
                    senha)values
                    ('Rodrigo',
					 '61987789878',
					 'rodrigo@aluno.senai.br',
					 '123'); -- DML
-- DQL
SELECT * FROM cliente;

-- Exercício : 1 ponto
-- Inserir todos os alunos presentes
--  e não presentes na tabela cliente
ALTER TABLE cliente MODIFY senha VARCHAR(64) NOT NULL;

-- mostrar a estrutura da tabela
describe cliente;
-- Exercício
-- "Marvin agora é só você..."
-- Criar a tabela Funcionario
-- Criar o servico
-- criar a tabela funcionário
CREATE TABLE funcionario(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL  
);

-- DROP TABLE servico;
CREATE TABLE servico(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    valor decimal(8,2)   
);
-- Mostrar dados do serviço
SELECT * FROM servico;
-- Criar a tabela de agendamento
CREATE TABLE agendamento(
   id int primary key auto_increment,
   data_agenda date NOT NULL,
   hora time NOT NULL,
   fk_cliente_id int NOT NULL,  -- campo do tipo inteiro
   fk_servico_id int NOT NULL,  -- campo do tipo inteiro
   fk_funcionario_id int NOT NULL -- campo do tipo inteiro
);

-- alterar a tabela agendamento = alter table
-- adicionamos constraint com o nome FK
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_cli
      foreign key(fk_cliente_id)
      references cliente(id)
      ON DELETE CASCADE;
      
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_fun
      foreign key(fk_funcionario_id)
      references funcionario(id)
      ON DELETE CASCADE;
      
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_ser
      foreign key(
      fk_servico_id)
      references servico(id)
      ON DELETE CASCADE;


-- comentário

-- Criar um banco de dados

-- Linguagem SQL

-- DDL , DML, DQL

-- DDL (Data Definition Language)
-- CREATE , DROP , ALTER
-- criar o banco de dados
DROP DATABASE salaoestilorei; -- ddl
CREATE DATABASE salaoestilorei; -- ddl
-- usar o banco de dados
USE salaoestilorei;
-- criar a tabela
CREATE TABLE cliente(
    id int primary key auto_increment,
    nome varchar(80) 
    NOT NULL,
    telefone char(13),
    email varchar(80) UNIQUE NOT NULL,
    senha varchar(255) NOT NULL
);
describe cliente;
-- DML
INSERT INTO cliente(nome,
					telefone,
                    email,
                    senha)values
                    ('Rodrigo',
					 '61987789878',
					 'rodrigo@aluno.senai.br',
					 '123'); -- DML
                     
INSERT INTO cliente (nome, telefone, email, senha) VALUES
('Carlos Silva', '61991234567', 'carlos.silva@aluno.senai.br', 'senha123'),
('Fernanda Costa', '61993456789', 'fernanda.costa@aluno.senai.br', 'senha123'),
('João Pereira', '61994567890', 'joao.pereira@aluno.senai.br', 'senha123'),
('Mariana Oliveira', '61995678901', 'mariana.oliveira@aluno.senai.br', 'senha123'),
('Lucas Martins', '61996789012', 'lucas.martins@aluno.senai.br', 'senha123'),
('Paula Santos', '61997890123', 'paula.santos@aluno.senai.br', 'senha123'),
('Thiago Lima', '61998901234', 'thiago.lima@aluno.senai.br', 'senha123'),
('Ana Souza', '61999012345', 'ana.souza@aluno.senai.br', 'senha123'),
('Rafael Almeida', '61990123456', 'rafael.almeida@aluno.senai.br', 'senha123'),
('Juliana Rocha', '61990234567', 'juliana.rocha@aluno.senai.br', 'senha123');


                     
                     
-- DQL
SELECT * FROM cliente;

-- Exercício : 1 ponto
-- Inserir todos os alunos presentes
--  e não presentes na tabela cliente
ALTER TABLE cliente MODIFY senha VARCHAR(64) NOT NULL;

-- mostrar a estrutura da tabela
describe cliente;
-- Exercício
-- "Marvin agora é só você..."
-- Criar a tabela Funcionario
-- Criar o servico
-- criar a tabela funcionário
CREATE TABLE funcionario(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL  
);

-- DROP TABLE servico;
CREATE TABLE servico(
    id int primary key auto_increment,
    nome varchar(80) NOT NULL,
    valor decimal(8,2)   
);
-- Mostrar dados do serviço
SELECT * FROM servico;
-- Criar a tabela de agendamento
CREATE TABLE agendamento(
   id int primary key auto_increment,
   data_agenda date NOT NULL,
   hora time NOT NULL,
   fk_cliente_id int NOT NULL,  -- campo do tipo inteiro
   fk_servico_id int NOT NULL,  -- campo do tipo inteiro
   fk_funcionario_id int NOT NULL -- campo do tipo inteiro
);

-- alterar a tabela agendamento = alter table
-- adicionamos constraint com o nome FK
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_cli
      foreign key(fk_cliente_id)
      references cliente(id)
      ON DELETE CASCADE;
      
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_fun
      foreign key(fk_funcionario_id)
      references funcionario(id)
      ON DELETE CASCADE;
      
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_ser
      foreign key(
      fk_servico_id)
      references servico(id)
      ON DELETE CASCADE;
      