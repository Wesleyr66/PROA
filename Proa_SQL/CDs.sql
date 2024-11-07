CREATE DATABASE CD;
USE CD;

CREATE TABLE artista(
cod_art INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
nome_art VARCHAR(100) NOT NULL UNIQUE KEY
);

CREATE TABLE gravadora(
cod_grav INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
come_grav VARCHAR(100) NOT NULL UNIQUE KEY
);

CREATE TABLE categoria(
cod_cat Int AUTO_INCREMENT PRIMARY KEY NOT NULL,
nome_cat VARCHAR(50) NOT NULL UNIQUE KEY
);

CREATE TABLE estado(
sigla_est CHAR(2) NOT NULL PRIMARY KEY,
nome_est CHAR(50) NOT NULL UNIQUE KEY
);

CREATE TABLE cidade(
cod_cid int NOT NULL PRIMARY KEY auto_increment,
sigla_est CHAR(2) NOT NULL
);

alter table cidade add constraint foreign key (sigla_est) references estado (sigla_est);

CREATE TABLE cliente(
cod_cli INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cod_cid INT NOT NULL,
nome_cli VARCHAR(100) NOT NULL,
end_cli VARCHAR(200) NOT NULL,
renda_cli DECIMAL(10,2) NOT NULL DEFAULT 0 CHECK (renda_cli >= 0),
sexo_cli enum('f','m','o') NOT NULL DEFAULT 'F'
);

alter table cliente add constraint foreign key (cod_cid) references cidade (cod_cid);
DESCRIBE cliente;

CREATE TABLE conjuge(
cod_cli int NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_conj VARCHAR(100) NOT NULL CHECK(nome_conj >= 0) DEFAULT 0,
renda_conj DECIMAL(10,2) NOT NULL CHECK (renda_conj >= 0) DEFAULT 0,
sexo_conj enum('f','m','o') NOT NULL DEFAULT 'F'
);

ALTER TABLE conjuge ADD CONSTRAINT FOREIGN KEY (cod_cli) REFERENCES cliente (cod_cli);

CREATE TABLE funcionario(
cod_func INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_func VARCHAR(100) NOT NULL,
end_func VARCHAR(200) NOT NULL,
sal_func DECIMAL(10,2) NOT NULL CHECK(sal_func >= 0 ) DEFAULT 0,
sexo_func ENUM('f','m') NOT NULL DEFAULT 'm'
);

CREATE TABLE dependente(
cod_dep INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cod_func INT NOT NULL,
nome_dep VARCHAR (100) NOT NULL,
sexo_dep ENUM ('f','m') DEFAULT 'm'
);

ALTER TABLE dependente ADD CONSTRAINT FOREIGN KEY (cod_func) REFERENCES funcionario (cod_func);

CREATE TABLE titulo (
 cod_tit INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 cod_cat INT NOT NULL,
 cod_grav INT NOT NULL,
 nome_cd VARCHAR(100) NOT NULL UNIQUE KEY,
 val_cd DECIMAL(10,2) NOT NULL CHECK (val_cd > 0),
 qtd_estq INT NOT NULL CHECK (qtd_estq >= 0)
);

ALTER TABLE titulo ADD CONSTRAINT FOREIGN KEY (cod_cat) REFERENCES categoria (cod_cat);
ALTER TABLE titulo ADD CONSTRAINT FOREIGN KEY (cod_grav) REFERENCES gravadora (cod_grav);

CREATE TABLE pedido (
num_ped INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cod_cli INT NOT NULL,
cod_func INT NOT NULL,
data_ped DATETIME NOT NULL,
val_ped DECIMAL (10,2) NOT NULL CHECK(val_ped >= 0) DEFAULT 0
);

ALTER TABLE pedido ADD CONSTRAINT FOREIGN KEY (cod_cli) REFERENCES cliente (cod_cli);
ALTER TABLE pedido ADD CONSTRAINT FOREIGN KEY (cod_func) REFERENCES funcionario (cod_func);

CREATE TABLE titulo_pedido (
num_ped INT NOT NULL,
cod_tit INT NOT NULL,
qtd_cd INT NOT NULL CHECK(qtd_cd >= 1),
val_cd DECIMAL(10,2) NOT NULL CHECK (val_cd > 0),

PRIMARY KEY (num_ped , cod_tit)
);

ALTER TABLE titulo_pedido ADD CONSTRAINT FOREIGN KEY (num_ped) REFERENCES pedido (num_ped);
ALTER TABLE titulo_pedido ADD CONSTRAINT FOREIGN KEY (cod_tit) REFERENCES titulo (cod_tit);

CREATE TABLE titulo_artista (
    Cod_Tit INT NOT NULL,
    Cod_Art INT NOT NULL,

    PRIMARY KEY (Cod_Tit, Cod_Art),

    FOREIGN KEY (Cod_Tit) REFERENCES Titulo(Cod_Tit),
    FOREIGN KEY (Cod_Art) REFERENCES Artista(Cod_Art)
);

DESCRIBE titulo_artista