DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome_plano VARCHAR(45) NOT NULL,
	price DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artistas(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome_artista VARCHAR(155) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome_album VARCHAR(45) NOT NULL,
	ano_lancamento YEAR NOT NULL,
    artista_id INT,
	FOREIGN KEY (artista_id) REFERENCES artistas(id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome_musica VARCHAR(255) NOT NULL,
  duracao INT NOT NULL,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albuns(id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.pessoas_usuarias (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(155) NOT NULL,
  idade INT NOT NULL,
  data_assinatura DATE,  
  plano_id INT,
  FOREIGN KEY (plano_id) REFERENCES plano(id)
) engine = InnoDB;

CREATE TABLE seguidores (
  artista_id INT,
  usuario_id INT,
  PRIMARY KEY (artista_id, usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(id),
  FOREIGN KEY (usuario_id) REFERENCES pessoas_usuarias(id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes (
  musica_id INT,
  usuario_id INT,
  data_reproducao DATETIME,
  PRIMARY KEY (musica_id, usuario_id, data_reproducao),
  FOREIGN KEY (musica_id) REFERENCES musicas(id),
  FOREIGN KEY (usuario_id) REFERENCES pessoas_usuarias(id)
) engine = InnoDB;
INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');
INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');
