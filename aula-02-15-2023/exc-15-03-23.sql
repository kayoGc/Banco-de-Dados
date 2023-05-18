# Kayo Victor G. Costa RM: 22681
# Murilo Eugenio G. Silva RM: 22841
# atv banco de dados locação carros

create database locacaocarros;
use locacaocarros;

create table cliente (
	cliente_cod int not null,
	cliente_nome varchar(50) not null,
	cliente_email varchar(50) not null,
	cliente_cpf varchar(15) not null,
	cliente_endereco varchar(70) not null,
	cliente_complemento varchar(50) null,
	cliente_cidade varchar(50) not null,
	cliente_estado varchar(30) not null,
	dt_cadastro date not null,
	constraint PK_cliente primary key (cliente_cod),
	constraint UK_cliente unique (cliente_cpf)
);

create table marca (
	marca_cod int not null,
	marca_desc text not null,
	constraint PK_marca primary key (marca_cod)
);

create table modelo (
	modelo_cod int not null,
	modelo_desc text not null,
	constraint PK_modelo primary key (modelo_cod)
);

create table automovel (
	auto_cod int not null,
	marca_cod int not null,
	modelo_cod int not null,
	auto_nome varchar(50) not null,
	constraint PK_automovel primary key (auto_cod),
	constraint FK_automovel_marca foreign key (marca_cod)
		references marca(marca_cod),
	constraint FK_automovel_modelo foreign key (modelo_cod)
		references modelo(modelo_cod)
);

create table locacao (
	locacao_cod int not null,
	auto_cod int not null,
	cliente_cod int not null,
	locacao_km decimal(6, 2) not null,
	dt_cadastro date not null,
	constraint PK_locacao primary key (locacao_cod),
	constraint FK_locacao_automovel foreign key (auto_cod)
		references automovel(auto_cod),
	constraint FK_locacao_cliente foreign key (cliente_cod)
		references cliente(cliente_cod)
);