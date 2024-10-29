create database Consultorio; /* criando o banco de dados */
use Consultorio; /* acessando o banco de dados */

drop database Consultorio;

create table Paciente(
 pk_id_paciente int auto_increment primary key,
 nome_paciente varchar(100) not null,
 data_nasc_paciente date,
 cpf_paciente char(11),
 genero_paciente enum('f','m','o'),
 endereco_paciente varchar(100),
 email_paciente varchar(50),
 telefone_paciente char(13)
);

insert into Paciente (nome_paciente,data_nasc_paciente,cpf_paciente,genero_paciente,endereco_paciente,email_paciente,telefone_paciente) values
('Wesley harleaaa','20050110','12345422719','m','rua eaaaaaaavv','wesle@prpaaal.com','5522273587088'),
('jow harleaaa','20010110','12345422419','f','rua eaaaaaaanv','wesle@pfpaaal.com','5522272587088'),
('jato harleaaa','20020110','12345622219','f','rua eaaaaaaabv','wesle@pppaaal.com','5522373587088'),
('xique xique ','20030110','12345422219','m','rua eaaaaaaaxbv','wesle@pzpaaal.com','5522473587088'),
('mane galinha','20040110','12345022219','m','rua eaaaaaaaxv','wesle@pxpaaal.com','5522273587088');
describe Paciente;
select * from Paciente;

create table Dentista(
pk_id_paciente int auto_increment primary key,
nome_dentista varchar(100) not null,
data_nasc_dentista date,
cro_dentista int(10),
genero_dentista enum('f','m','o'),
endereco_dentista varchar(100),
telefone_dentista char(13)
);

insert into Dentista (nome_dentista,data_nasc_dentista,cro_dentista,genero_dentista,endereco_dentista,telefone_dentista) values
('vitor','20050714','2234567890','m','rua marrom','5511977588088'),
('gustava','20011113','3442567892','f','rua amarelo','5511417118228'),
('pana','20000214','7214467890','f','rua verde','5511941662211');
select * from Dentista;
describe Dentista;

create table Consulta(
pk_id_consulta int auto_increment primary key,
local_consulta varchar(40),
data_consulta datetime,
descricao_consulta varchar(100)
);
insert into Consulta(local_consulta,data_consulta,descricao_consulta) values
('Xique Xique bahia','2024-10-18 13:45','escovar os dentes'),
('Xique Xique bahia','2024-10-18 14:05','escovar os dentes'),
('Xique Xique bahia','2024-10-18 14:25','escovar os dentes'),
('Xique Xique bahia','2024-10-18 14:45','escovar os dentes'),
('Xique Xique bahia','2024-10-18 15:05','escovar os dentes'),
('Xique Xique bahia','2024-10-18 15:25','escovar os dentes'),
('Xique Xique bahia','2024-10-18 15:45','escovar os dentes');

describe Consulta;
select * from Consulta;