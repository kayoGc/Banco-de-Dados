DROP DATABASE IF EXISTS tijolobuster;
CREATE DATABASE IF NOT EXISTS tijolobuster;
USE tijolobuster;

CREATE TABLE Clientes
(
   IDCliente int not null PRIMARY KEY,
   NomeCliente varchar(30) not null,
   Endereco varchar(50) not null,
   Telefone varchar(9) not null
);

CREATE TABLE Filmes
(
   IDFilme int not null PRIMARY KEY,
   Titulo varchar(30) not null,
   Genero varchar(20) not null,
   Idioma varchar(20) not null,
   Preco decimal(3,2) not null
);

CREATE TABLE Alugueis
(
   CodAluguel int not null PRIMARY KEY,
   DataAluguel date not null,
   DataDevolucao date not null,
   IDCliente int not null,
   FOREIGN KEY(IDCliente)
      REFERENCES Clientes(IDCliente)
);
   
CREATE TABLE ItensAlugados
(
   CodAluguel int not null,
   IDFilme int not null,
   QtdeEstoque tinyint not null,
   PRIMARY KEY (CodAluguel,IDFilme),
   FOREIGN KEY (CodAluguel)
      REFERENCES Alugueis(CodAluguel),
   FOREIGN KEY (IDFilme)
      REFERENCES Filmes(IDFilme)
);	

 ALTER TABLE Clientes
 ADD COLUMN Estado char(2) not null;

ALTER TABLE ItensAlugados
DROP COLUMN QtdeEstoque;

INSERT INTO Clientes
VALUES (1,'Alberto Pasqualini','Rua do Ouvidor','3838-4000','SP'),
(2,'Emma Goldman','Rua José Bonifácio','2244-1000','SP'),
(3,'Getúlio Vargas','Rua Gotemburgo','3738-8008','RJ'),
(4,'John Locke','Rua São Sebastião','5670-6070','MG'),
(5,'Nicolau Maquiavel','Rua Francisco Eugênio','3700-8000','RJ');

INSERT INTO Filmes
VALUES (1,'Sherlock Holmes','Ação e Aventura','Inglês',9.85),
(2,'Planeta 51','Infantil','Português',4.95),
(3,'Zumbilândia','Comédia','Inglês',4.95),
(4,'Bastardos Inglórios','Ação e Aventura','Inglês',7.50),
(5,'Alvin e os Esquilos 2','Infantil','Português',4.95);

INSERT INTO Alugueis
VALUES (1,'2021-08-16','2021-08-18',2),
(2,'2021-08-16','2021-08-18',4),
(3,'2021-08-17','2021-08-19',1),
(4,'2021-08-19','2021-08-21',3),
(5,'2021-08-19','2021-08-21',5);

INSERT INTO ItensAlugados
VALUES (1,2),(1,4),
       (2,3),
	   (3,1),(3,2),(3,5),
	   (4,4),
	   (5,3),(5,1);
	   
SELECT *
FROM Filmes
ORDER BY Preco DESC;

SELECT NomeCliente, Telefone
FROM Clientes
ORDER BY Estado ASC;

SELECT *
FROM ItensAlugados
ORDER BY IDFilme ASC;



 
   
   
   
   
   
   
   
   
   
   
   
   