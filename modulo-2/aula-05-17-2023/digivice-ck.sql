# Caio Peixoto dos Santos RM:19567
# Kayo Victor Gonçalo da Costa RM:22681

# 1)
drop database if exists digivice;
create database if not exists digivice;
use digivice;

#2)
create table Digimons (
	DigiCode int not null primary key,
	nome varchar(50) not null,
	nivel varchar(30) not null,
	tipo varchar(30) not null,
	atributo varchar(30) not null,
	peso int not null
);

# 3)
insert into Digimons 
	values (1, "Agumon", "Child", "Repitile", "Vaccine", "20"),
	(2, "AeroV-Dramon", "Perfect", "Holy Dragon", "Vaccine", "30"),
	(3, "Airdramon", "Adult", "Mythical Beast", "Vaccine", "20"),
	(4, "Alphamon", "Ultimate", "Holy Knight", "Vaccine", "70"),
	(5, "Andromon", "Perfect", "cyborg", "Vaccine", "20"),
	(6, "Aquilamon", "Adult", "Giant bird", "Free/Data/None", "15"),
	(7, "Atlurkabuterimon (blue)", "Perfect", "Insect", "Data/Vaccine", "30"),
	(8, "Armadimon", "Child", "Mammal", "Free/Vaccine/None", "15"),
	(9, "Andiramon", "Perfect", "Holy Beast", "Virus", "20"),
	(10, "Allomon", "Adult/Armor", "Dinossaur", "Data/Free", "26"),
	(11, "Angemon", "adult", "Angel", "Vaccine", "20"),
	(12, "Betamon", "child", "Amphibian", "Virus", "20"),
	(13, "Beelzebumon", "ultimate", "Demon Lord", "Virus", "20"),
	(14, "Barbamon", "ultimate", "Demon Lord", "Virus", "45"),
	(15, "Blacktailmon", "adult/child", "Demon Beast", "Virus", "15"),
	(16, "Burpmon", "Unknown", "Mutation", "Unknown", "80"),
	(17, "Candmon", "child", "Flame", "Data", "8"),
	(18, "Chapmon", "baby II", "Lesser", "None", "10"),
	(19, "Dagomon", "child", "Aquatic Beast Man", "Virus", "30"),
	(20, "Devidramon", "adult", "Evil Dragon", "Virus", "30");

# 6)
update Digimons 
	set tipo = "Madeira"
	where DigiCode = 12;
# 7)
update Digimons 
	set tipo = "folha"
	where tipo = "plant";
# 8)
delete from Digimons 
	where DigiCode = 18;
# 9)
delete from DigiMons 
	where DigiCode between 5 and 11;
#10)
select * from Digimons order by tipo desc;