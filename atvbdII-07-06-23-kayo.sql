# Kayo Victor G. Costa RM:22681

DROP DATABASE IF EXISTS Fipe;
CREATE DATABASE IF NOT EXISTS Fipe;
USE Fipe;

DROP TABLE IF EXISTS Carros;
CREATE TABLE carros (
	idCarro int not null primary key,
	fabricante varchar(45) not null,
	modelo varchar(100) not null,
	ano YEAR not null,
	preco decimal(8, 2) not null
);

CREATE TABLE clientes (
	idcliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nomecliente VARCHAR(10) NOT NULL, 
	estado VARCHAR(2) NOT NULL
);

CREATE TABLE vendas (
	idvenda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	datavenda DATE NOT NULL,
	idcliente INT NOT NULL,
	CONSTRAINT FK_vendas_clientes FOREIGN KEY (idcliente) REFERENCES clientes(idcliente)
);

CREATE TABLE itensvendidos (
	idvenda INT NOT NULL AUTO_INCREMENT, 
	idcarro INT NOT NULL,
	qtdevendida INT NOT NULL,
	CONSTRAINT PK_itensvendidos PRIMARY KEY (idvenda, idcarro),
	CONSTRAINT FK_itensvendidos_carros FOREIGN KEY (idcarro) REFERENCES carros(idcarro)
);

insert into carros # NISSAN
	values ("001", "Nissan", "LIVINA", "2010", 26481.00),
	("002", "Nissan", "LIVINA", "2011", 29721.00),
	("003", "Nissan", "LIVINA", "2013", 33877.00),
	("004", "Nissan", "LIVINA", "2014", 36864.00),
	("005", "Nissan", "KICKS S 1.6", "2018", 81276.00),
	("006", "Nissan", "KICKS S 1.6", "2019", 84456.00),
	("007", "Nissan", "KICKS S 1.6", "2020", 90292.00),
	("008", "Nissan", "KICKS S 1.6", "2021", 97756.00),
	("009", "Nissan", "Frontier ATTAC.CD 4x4", "2020", 180566.00),
	("010", "Nissan", "Frontier ATTAC.CD 4x4", "2021", 192755.00),
	("011", "Nissan", "Frontier ATTAC.CD 4x4", "2022", 205476.00),
	("012", "Nissan", "Frontier ATTAC.CD 4x4", "2023", 242157.00),
	("013", "Nissan", "MARCH 1.9 16V", "2012", 28019.00),
	("014", "Nissan", "MARCH 1.9 16V", "2013", 30149.00),
	("015", "Nissan", "MARCH 1.9 16V", "2014", 33975.00),
	("016", "Nissan", "MARCH 1.9 16V", "2015", 38706.00),
	("017", "Nissan", "Sentra S 2.0", "2013", 38595.00),
	("018", "Nissan", "Sentra S 2.0", "2014", 44743.00),
	("019", "Nissan", "Sentra S 2.0", "2015", 50215.00),
	("020", "Nissan", "Sentra S 2.0", "2016", 57878.00);

insert into carros # FORD
	values ("021", "Ford", "F-250", "2009", 184372.00),
	("022", "Ford", "F-250", "2010", 190355.00),
	("023", "Ford", "F-250", "2011", 195114.00),
	("024", "Ford", "F-250", "2012", 125213.00),
	("025", "Ford", "FUSION", "2016", 102389.00),
	("026", "Ford", "FUSION", "2017", 123815.00),
	("027", "Ford", "FUSION", "2018", 140912.00),
	("028", "Ford", "FUSION", "2019", 159974.00),
	("029", "Ford", "FIESTA", "2012", 32486.00),
	("030", "Ford", "FIESTA", "2013", 40357.00),
	("031", "Ford", "FIESTA", "2014", 43094.00),
	("032", "Ford", "FIESTA", "2015", 50199.00),
	("033", "Ford", "RANGER", "2008", 46891.00),
	("034", "Ford", "RANGER", "2009", 66103.00),
	("035", "Ford", "RANGER", "2010", 50025.00),
	("036", "Ford", "RANGER", "2011", 73656.00),
	("037", "Ford", "Escort", "1985", 5031.00),
	("038", "Ford", "Escort", "1986", 7568.00),
	("039", "Ford", "Escort", "1987", 8015.00),
	("040", "Ford", "Escort", "1988", 8988.00);

insert into carros # RENAULT
	values ("041", "Renault", "SANDERO", "2019", 67138.00),
	("042", "Renault", "SANDERO", "2020", 77528.00),
	("043", "Renault", "SANDERO", "2021", 86201.00),
	("044", "Renault", "SANDERO", "2022", 88562.00),
	("045", "Renault", "MEGANE", "2007", 45344.00),
	("046", "Renault", "MEGANE", "2008", 61555.00),
	("047", "Renault", "MEGANE", "2009", 88043.00),
	("048", "Renault", "MEGANE", "2010", 28907.00),
	("049", "Renault", "LOGAN", "2012", 27201.00),
	("050", "Renault", "LOGAN", "2013", 29378.00),
	("051", "Renault", "LOGAN", "2014", 38453.00),
	("052", "Renault", "LOGAN", "2015",	42003.00),
	("053", "Renault", "SYMBOL", "2009", 19727.00),
	("054", "Renault", "SYMBOL", "2010", 22878.00),
	("055", "Renault", "SYMBOL", "2011", 23701.00),
	("056", "Renault", "SYMBOL", "2012", 24988.00),
	("057", "Renault", "Kangoo", "2000", 12395.00),
	("058", "Renault", "Kangoo", "2001", 13988.00),
	("059", "Renault", "Kangoo", "2002", 14858.00),
	("060", "Renault", "Kangoo", "2003", 16400.00);

insert into carros # HYUNDAI
	values ("061", "Hyundai", "TUCSON", "2009", 36048.00),
	("062", "Hyundai", "TUCSON", "2010", 36950.00),
	("063", "Hyundai", "TUCSON", "2011", 38774.00),
	("064", "Hyundai", "TUCSON", "2012", 41156.00),
	("065", "Hyundai", "IX35", "2016", 85895.00),
	("066", "Hyundai", "IX35", "2017", 93322.00),
	("067", "Hyundai", "IX35", "2018", 96966.00),
	("068", "Hyundai", "IX35", "2019", 99832.00),
	("069", "Hyundai", "HB20X", "2013", 52005.00),
	("070", "Hyundai", "HB20X", "2014", 54344.00),
	("071", "Hyundai", "HB20X", "2015", 57875.00),
	("072", "Hyundai", "HB20X", "2016", 64344.00),
	("073", "Hyundai", "SANTA FE", "2008", 39616.00),
	("074", "Hyundai", "SANTA FE", "2009", 41560.00),
	("075", "Hyundai", "SANTA FE", "2010", 45690.00),
	("076", "Hyundai", "SANTA FE", "2011", 51451.00),
	("077", "Hyundai", "Excel", "1991", 3198.00),
	("078", "Hyundai", "Excel", "1992", 3874.00),
	("079", "Hyundai", "Excel", "1993", 4397.00),
	("080", "Hyundai", "Excel", "1994", 4774.00);

insert into carros # FIAT
	values("081", "Fiat", "ARGO", "2018", 51599.00),
	("082", "Fiat", "ARGO", "2019", 55666.00),
	("083", "Fiat",	"ARGO", "2023", 85896.00),
	("084", "Fiat", "ARGO", "2022", 79916.00),
	("085", "Fiat", "CRONOS", "2023", 70333.00),
	("086", "Fiat", "CRONOS", "2018", 61850.00),
	("087", "Fiat", "CRONOS", "2020", 80004.00),
	("088", "Fiat", "CRONOS", "2018", 71346.00),
	("089", "Fiat", "DUCATO", "2009", 61865.00),
	("090", "Fiat", "DUCATO", "2011", 68437.00),
	("091", "Fiat", "DUCATO", "2011", 63412.00),
	("092", "Fiat", "DUCATO", "2019", 184500.00),
	("093", "Fiat", "UNO", "1993", 8087.00),
	("094", "Fiat", "UNO", "2017", 41645.00),
	("095", "Fiat", "UNO", "1996", 7716.00),
	("096", "Fiat", "UNO", "2012", 21127.00),
	("097", "Fiat", "Linea", "2009", 29446.00),
	("098", "Fiat", "Linea", "2010", 30183.00),
	("099", "Fiat", "Linea", "2011", 32209.00),
	("100", "Fiat", "Linea", "2012", 34198.00);
