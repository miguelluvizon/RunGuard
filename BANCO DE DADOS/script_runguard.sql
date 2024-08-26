drop database if exists runguard;

create database runguard;
use runguard;


create table empresa (
idEmpresa int primary key auto_increment,
nome_empresa varchar(45)
);

create table usuario (
idUsuario int primary key auto_increment,
nome_usuario varchar(45),
email_usuario varchar(45),
senha_usuario varchar(45),
cargo varchar(45),
fkEmpresa_usuario int,
    constraint fkEmpresaUsuario foreign key (fkEmpresa_usuario) references empresa (idEmpresa)
);

create table equipamento (
idEquipamento int primary key auto_increment,
nome_equipamento varchar(45),
fkEmpresa_equipamento int,
    constraint fkEmpresaEquipamento foreign key (fkEmpresa_equipamento) references empresa (idEmpresa)
);

create table dados (
idDados int primary key auto_increment,
cpu_porcent double,
memoria_porcent double,
memoria_usada double,
disco_porcent_usado double,
dtHora datetime default current_timestamp,
fkEquipamento int,
    constraint fkEquipamentoDados foreign key (fkEquipamento) references equipamento (idEquipamento)
);

select * from dados;

insert into empresa values
(default, 'Uber'),
(default, '99 Táxi');


insert into equipamento values
(default, 'M1', 1),
(default, 'M2', 1),
(default, 'M3', 1),
(default, 'M4', 1);
