create database clienteBancodDados;
use clienteBancodDados;
#drop database clienteBancodDados;

create table cliente(
	id int not null auto_increment primary key,
    nome varchar(255) not null,
    cpf varchar(45) not null
);
create table ccorrente(
	numero int not null auto_increment primary key,
    saldo double not null,
    fk_cliente int not null, 
    foreign key(fk_cliente) references cliente(id)
);

create table cespecial(
	numero int not null auto_increment primary key,
    saldo double not null,
    limite int not null,
    fk_cliente int not null,
    foreign key(fk_cliente) references cliente(id)
);