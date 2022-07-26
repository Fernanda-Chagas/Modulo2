-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_Blog_Pessoal;

USE db_Blog_Pessoal;

CREATE TABLE tb_usuario(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Foto VARCHAR(255) NULL,
);

CREATE TABLE tb_temas (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_postagens (
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	Foto VARCHAR(255) NULL,
	FK_Criador INT NOT NULL,
	FK_Tema INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Tema) REFERENCES tb_temas (Id)
);

ALTER TABLE tb_usuarios ADD Cpf VARCHAR(50) NOT NULL;

ALTER TABLE tb_usuarios DROP COLUMN Cpf;

ALTER TABLE tb_usuarios ALTER COLUMN Foto VARCHAR(100) NOT NULL;

DROP TABLE tb_postagens;

--DROP DATABASE db_Blog_Pessoal;