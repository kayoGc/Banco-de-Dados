/* 1 */
DROP DATABASE IF EXISTS RM22841;
CREATE DATABASE IF NOT EXISTS RM22841;
USE RM22841;

/* 2 */
CREATE TABLE Clientes (
	idCliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nomeCliente VARCHAR(50) NOT NULL,
	CPFCliente VARCHAR(14) NOT NULL 
);

 CREATE TABLE Produtos(
 	idProduto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 	nomeProduto VARCHAR(50) NOT NULL,
 	precoUnitario DECIMAL(6,2)
);

CREATE TABLE Pedidos (
	codigoPedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	dataPedido DATE NOT NULL,
	idCliente INT NOT NULL,
	CONSTRAINT FK_Pedidos_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

CREATE TABLE ItensPedidos(
	codigoPedido INT NOT NULL,
	idProduto INT NOT NULL,
	qtdeVendida INT NOT NULL,
	CONSTRAINT PK_ItensPedidos PRIMARY KEY (codigoPedido, idProduto),
	CONSTRAINT FK_ItensPedidos_Produtos  FOREIGN KEY (idProduto) REFERENCES Produtos (idProduto),
	CONSTRAINT FK_ItensPedidos_Pedidos  FOREIGN KEY (codigoPedido) REFERENCES Pedidos (codigoPedido)
);

/* 3 */
INSERT INTO Clientes VALUES
(null, "José Das Costas Ocas", "111.111.111-11"),
(null, "Mario Luigi",  "222.222.222-22"),
(null, "Kleber Machado",  "333.333.333-33"),
(null, "Sonic Douglas", "444.444.444-44"),
(null, "Bash Petion",  "555.555.555-55");

/* 4 */
INSERT INTO Produtos VALUES
(null, "Mouse", 10.00),
(null, "Teclado", 25.00),
(null, "Monitor", 250.00),
(null, "CPU", 600.00),
(null, "Caixa de som", 150.00);

/* 5 */
INSERT INTO Pedidos VALUES
(null, "2023-06-14", 1),
(null, "2023-07-14", 2),
(null, "2023-08-14", 3),
(null, "2023-09-14", 4),
(null, "2023-10-14", 5);

INSERT INTO ItensPedidos VALUES
(1, 1, 2),
(1, 2, 1),
(2, 5, 2),
(3, 3, 1),
(3, 4, 1),
(4, 5, 3),
(5, 1, 1),
(5, 2, 1);

/* 6 */
SELECT * FROM Clientes WHERE nomeCliente LIKE "b%";

/* 7 */
SELECT * FROM Produtos WHERE precoUnitario > '10.00' AND precoUnitario < '50.00';

/* 8 */
SELECT Pedidos.codigoPedido, Pedidos.dataPedido, Clientes.nomeCliente FROM Pedidos INNER JOIN Clientes ON Pedidos.idCliente = Clientes.idCliente

/* 9 */
SELECT Pedidos.codigoPedido, Produtos.nomeProduto, Produtos.precoUnitario, ItensPedidos.qtdeVendida
FROM Pedidos INNER JOIN ItensPedidos ON Pedidos.codigoPedido = ItensPedidos.codigoPedido
INNER JOIN Produtos ON ItensPedidos.idProduto = Produtos.idProduto;
