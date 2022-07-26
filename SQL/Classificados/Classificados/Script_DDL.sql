


CREATE DATABASE db_classificados;

USE db_classificados;

CREATE TABLE tb_usuarios(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Pessoa VARCHAR(100) NOT NULL CHECK (Pessoa IN ('FIS', 'JURI')),
	Url_Imagem VARCHAR(100) NOT NULL
);

CREATE TABLE tb_anuncios(
	id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(45) NOT NULL,
	descricao VARCHAR(1000) NOT NULL,
	contato VARCHAR(50) NOT NULL,
	urlImagem VARCHAR(100) NOT NULL,
	dataHora DATE NOT NULL,
	fk_Usuario INT NOT NULL,
	FOREIGN KEY (fk_Usuario) REFERENCES tb_usuarios (Id)
);