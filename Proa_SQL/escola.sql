CREATE DATABASE db_escola;
USE db_escola;

create table tb_aluno(
 pk_id_aluno int auto_increment primary key,
 nome_aluno varchar(100) not null,
 data_nasc_aluno date,
 cpf_aluno char(11),
 genero_aluno enum('f','m','o'),
 endereco_aluno varchar(100),
 email_aluno varchar(50)
);

INSERT INTO tb_aluno (nome_aluno, data_nasc_aluno, cpf_aluno, genero_aluno, endereco_aluno, email_aluno) VALUES
('Mariana Souza', '2001-04-12', '12345678901', 'f', 'Rua das Flores, 123', 'mariana.souza@example.com'),
('Carlos Lima', '1999-07-23', '23456789012', 'm', 'Avenida Paulista, 456', 'carlos.lima@example.com'),
('Fernanda Santos', '2003-01-15', '34567890123', 'f', 'Rua da Esperança, 789', 'fernanda.santos@example.com'),
('João Oliveira', '2002-05-30', '45678901234', 'm', 'Travessa Alegre, 10', 'joao.oliveira@example.com'),
('Ana Ribeiro', '2000-12-25', '56789012345', 'f', 'Avenida Central, 234', 'ana.ribeiro@example.com'),
('Lucas Fernandes', '2001-08-19', '67890123456', 'm', 'Rua do Sol, 56', 'lucas.fernandes@example.com'),
('Paula Mendes', '1998-11-22', '78901234567', 'f', 'Estrada Velha, 90', 'paula.mendes@example.com'),
('Gustavo Almeida', '2003-02-17', '89012345678', 'm', 'Rua Nova, 1234', 'gustavo.almeida@example.com'),
('Beatriz Rocha', '2002-10-09', '90123456789', 'f', 'Rua Verde, 567', 'beatriz.rocha@example.com'),
('Rafael Correia', '2000-03-05', '01234567890', 'm', 'Rua Azul, 678', 'rafael.correia@example.com');

select * from tb_aluno;

CREATE TABLE tb_professor (
    pk_id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome_professor VARCHAR(100) NOT NULL,
    data_nasc_professor DATE,
    cpf_professor CHAR(11),
    genero_professor ENUM('f', 'm', 'o'),
    especialidade_professor VARCHAR(100),
    email_professor VARCHAR(50)
);

INSERT INTO tb_professor (nome_professor,data_nasc_professor,cpf_professor,genero_professor,especialidade_professor,email_professor) VALUES
('Carlos Silva', '1980-03-15', '12345678901', 'm', 'Matemática', 'carlos.silva@example.com'),
('Ana Oliveira', '1975-07-22', '23456789012', 'f', 'Português', 'ana.oliveira@example.com'),
('João Souza', '1988-11-30', '34567890123', 'm', 'História', 'joao.souza@example.com'),
('Mariana Costa', '1990-04-05', '45678901234', 'f', 'Geografia', 'mariana.costa@example.com'),
('Rafael Lima', '1983-09-18', '56789012345', 'm', 'Física', 'rafael.lima@example.com'),
('Beatriz Santos', '1992-06-10', '67890123456', 'f', 'Química', 'beatriz.santos@example.com'),
('Lucas Ferreira', '1978-02-27', '78901234567', 'm', 'Biologia', 'lucas.ferreira@example.com'),
('Paula Ribeiro', '1985-08-12', '89012345678', 'f', 'Inglês', 'paula.ribeiro@example.com'),
('Fernanda Almeida', '1989-10-20', '90123456789', 'f', 'Artes', 'fernanda.almeida@example.com'),
('Gustavo Mendes', '1976-12-03', '01234567890', 'm', 'Educação Física', 'gustavo.mendes@example.com');

SELECT * FROM tb_professor;
DESCRIBE tb_professor;

ALTER TABLE tb_professor
ADD COLUMN estado_civil_professor ENUM('s','c','v'),
ADD COLUMN nome_mae_professor VARCHAR(100),
ADD COLUMN cidade_professor VARCHAR(50);

ALTER TABLE tb_professor
CHANGE COLUMN cpf_professor cpf_professor varchar(22);

INSERT INTO tb_professor (nome_professor,data_nasc_professor,cpf_professor,genero_professor,especialidade_professor,email_professor) VALUES
('Crlos va', '1920-03-15', '12325628903', 'm', 'Matemática', 'cos.silva@example.com'),
('Ana eira', '1915-07-22', '23426729016', 'f', 'Português', 'ana.veira@example.com'),
('João uza', '1908-11-30', '34527820129', 'm', 'História', 'jo.soza@example.com');

ALTER TABLE tb_professor
DROP COLUMN cidade_professor;

UPDATE tb_professor
SET especialidade_professor = 'Teste'
WHERE pk_id_professor in (13,12,11,10,9);

DELETE FROM tb_professor
WHERE pk_id_professor in (12,10,7);

UPDATE tb_professor
SET email_professor = 'Solicitação em andamento';

ALTER TABLE tb_professor
CHANGE COLUMN estado_civil_professor estado_civil_professor varchar(10);

ALTER TABLE tb_professor
CHANGE COLUMN especialidade_professor especialidade_professor varchar(50);

CREATE TABLE tb_aula (
    pk_id_aula INT AUTO_INCREMENT PRIMARY KEY,
    inicio_aula DATETIME,
    fim_aula DATETIME,
    disciplina_aula VARCHAR(100),
    descricao_aula VARCHAR(100)
);

INSERT INTO tb_aula (inicio_aula, fim_aula, disciplina_aula, descricao_aula) VALUES
('2024-11-01 08:00:00', '2024-11-01 10:00:00', 'Matemática', 'Aula sobre álgebra básica'),
('2024-11-01 10:15:00', '2024-11-01 12:15:00', 'Português', 'Interpretação de texto'),
('2024-11-02 08:00:00', '2024-11-02 10:00:00', 'História', 'Revolução Industrial'),
('2024-11-02 10:15:00', '2024-11-02 12:15:00', 'Geografia', 'Climas e vegetação'),
('2024-11-03 08:00:00', '2024-11-03 10:00:00', 'Física', 'Leis de Newton'),
('2024-11-03 10:15:00', '2024-11-03 12:15:00', 'Química', 'Tabela Periódica e elementos químicos'),
('2024-11-04 08:00:00', '2024-11-04 10:00:00', 'Biologia', 'Genética e hereditariedade'),
('2024-11-04 10:15:00', '2024-11-04 12:15:00', 'Inglês', 'Gramática e vocabulário básico'),
('2024-11-05 08:00:00', '2024-11-05 10:00:00', 'Artes', 'História da Arte e Renascimento'),
('2024-11-05 10:15:00', '2024-11-05 12:15:00', 'Educação Física', 'Alongamento e exercícios aeróbicos');

SELECT * FROM tb_aula;


START TRANSACTION;

DELETE FROM tb_professor;

SELECT * FROM tb_professor;

rollback;
commit;