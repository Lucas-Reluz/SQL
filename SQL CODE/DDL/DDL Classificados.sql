CREATE DATABASE db_Classificados

CREATE TABLE Usuarios(
ID INT PRIMARY KEY NOT NULL,
Nome VARCHAR(100) NULL,
Email VARCHAR(100) NOT NULL,
Senha VARCHAR(100) NOT NULL,
)

CREATE TABLE ANUNCIO(
ID INT PRIMARY KEY NOT NULL,
Titulo VARCHAR(100) NOT NULL,
Descricao VARCHAR(200) NOT NULL,
Telefone VARCHAR(100) NOT NULL,
FK_Usuario INT NOT NULL,
FOREIGN KEY (FK_Usuario) REFERENCES Usuarios (ID)
)

ALTER TABLE ANUNCIO ALTER COLUMN Titulo VARCHAR(100) NULL
