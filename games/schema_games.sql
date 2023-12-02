CREATE DATABASE games;

USE games;

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

--SHOW FIELDS FROM categorias;

CREATE TABLE jogos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    competitivo BOOLEAN NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias (id)
);

--SHOW FIELDS FROM jogos;

CREATE TABLE plataformas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_jogo INT NOT NULL,
    FOREIGN KEY (id_jogo) REFERENCES jogos (id)
);

--SHOW FIELDS FROM plataformas;

CREATE TABLE jogos_possuem_plataformas(
    id_jogo INT NOT NULL,
    id_plataforma INT NOT NULL,
    PRIMARY KEY (id_jogo, id_plataforma),
    FOREIGN KEY (id_jogo) REFERENCES jogos (id),
    FOREIGN KEY (id_plataforma) REFERENCES plataformas (id)
);

SHOW FIELDS FROM jogos_possuem_plataformas;