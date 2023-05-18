/* 
	Kayo Victor G. Costa RM: 22681
	Murilo Eugenio Gicirani Silva RM: 22841
 */

drop database if exists Locadora;
create database if not exists Locadora;
use Locadora;

create table Clientes (
	NomeCliente varchar(70) not null,
	CPF varchar(14) not null UNIQUE,
	Telefone varchar(16) not null
);

create table Alugueis (
	data date not null,
	IDCliente int not null primary key
);

create table Filmes (
	IDFilme int not null primary key,
	Idade int not null
);

create table ItensAlugados (
	Comprovante int not null,
	IDFilme int not null,
	constraint PK_ItensAlugados primary key(Comprovante, IDFilme),
	constraint FK_ItensAlugados_filmes foreign key (IDFilme)
		references filmes(IDFilme)
);

alter table Clientes
add column IDCliente int not null primary key first,
add column Endereco varchar(110) not null after NomeCliente;

/* Alugueis */
alter table Alugueis
add column Comprovante int not null first,
add column Devolucao date not null after Data;

alter table alugueis
drop column IDCliente;

alter table alugueis
add column IDCliente int not null;

alter table alugueis 
add constraint PK_Alugueis primary key(Comprovante);
/* Alugueis*/

alter table Filmes
add column Titulo varchar(50) not null after IDFilme,
add column Genero varchar(30) not null,
add column Idioma varchar(30) not null,
add column Preco decimal(5, 2) not null
drop column idade;

alter table ItensAlugados 
add column QtdeEstoque int not null,
add constraint FK_ItensAlugados_Alugueis foreign key(Comprovante)
	references Alugueis(Comprovante);