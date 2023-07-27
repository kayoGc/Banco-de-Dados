DROP DATABASE IF EXISTS MegaFarma; # apaga se existir
CREATE DATABASE IF NOT EXISTS MegaFarma; # cria se não existe
USE MegaFarma;

create table Clientes (
	NomeCliente varchar(30) not null,
	CPFCliente varchar(14) not null,
	CorFavorita varchar(20) not null
);

CREATE TABLE Pedidos (
	IDVenda INT NOT NULL PRIMARY KEY,
	DataDoBagulho DATETIME NOT NULL,
	IDCliente INT NOT NULL
);

ALTER TABLE Clientes
ADD COLUMN IDCliente INT NOT NULL FIRST;

ALTER TABLE Clientes
ADD COLUMN Endereco VARCHAR(10) NULL AFTER CPFCliente;

ALTER TABLE Clientes
MODIFY COLUMN Endereco VARCHAR(50) NOT NULL;

ALTER TABLE Clientes
MODIFY COLUMN CorFavorita TINYINT NOT NULL;

ALTER TABLE Pedidos
CHANGE COLUMN DataDoBagulho DataVenda DATETIME NOT NULL; 

ALTER TABLE Pedidos
RENAME TO Vendas; 

ALTER TABLE Clientes
DROP COLUMN CorFavorita; 

ALTER TABLE Clientes
ADD CONSTRAINT PK_Clientes PRIMARY KEY (IDCliente); 

ALTER TABLE Vendas
ADD CONSTRAINT FK_Vendas_Clientes FOREIGN KEY (IDCliente)
REFERENCES Clientes(IDCliente); 

alter table clientes
   add column Bairro varchar(30) not null,
   add column CEP varchar(8) not null,
   modify column NomeCliente varchar(50) not null,
   change column Endereco Longradouro varchar(50) not null; #comando que é possivel modificar varios parametros. 

