CREATE DATABASE db_Marketplace

USE db_Marketplace

CREATE TABLE tb_usuarios(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	Url_Foto VARCHAR(100) NULL
);

CREATE TABLE tb_categorias(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Categoria VARCHAR(45) NOT NULL
);

CREATE TABLE tb_produtos(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Produto VARCHAR(45) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Valor FLOAT NOT NULL,
	Url_Imagem VARCHAR(100) NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Categoria INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Categoria) REFERENCES tb_categorias (Id)
);

CREATE TABLE compras(
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	DataHora DATE NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),	
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtoS (Id)
);

