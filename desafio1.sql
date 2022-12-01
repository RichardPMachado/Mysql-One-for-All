DROP DATABASE IF EXISTS SpotifyClone;

	CREATE DATABASE SpotifyClone;

	CREATE TABLE SpotifyClone.planos (
		plano_id INT PRIMARY KEY AUTO_INCREMENT,
		plano VARCHAR(25) NOT NULL,
		preco DOUBLE NOT NULL
	) ENGINE = InnoDB;

	CREATE TABLE SpotifyClone.usuarios (
		usuario_id INT PRIMARY KEY AUTO_INCREMENT,
		nome VARCHAR(50) NOT NULL,
		idade INT NOT NULL,
        data_assinatura DATE NOT NULL,
		plano_id INT NOT NULL,
		FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos(plano_id)
	) ENGINE = InnoDB;

	CREATE TABLE SpotifyClone.artistas (
		artista_id INT PRIMARY KEY AUTO_INCREMENT,
		nome VARCHAR(50) NOT NULL
	) ENGINE = InnoDB;

	CREATE TABLE SpotifyClone.albuns (
		album_id INT PRIMARY KEY AUTO_INCREMENT,
		titulo_album VARCHAR(50) NOT NULL,
		ano_lancamento INT NOT NULL,
		artista_id INT NOT NULL,
		FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
	) ENGINE = InnoDB;

	CREATE TABLE SpotifyClone.cancoes (
		cancao_id INT PRIMARY KEY AUTO_INCREMENT,
		titulo_cancao VARCHAR(100) NOT NULL,
		duracao_cancao INT NOT NULL,
		album_id INT NOT NULL,
		FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns(album_id)
	) ENGINE = InnoDB;

	CREATE TABLE SpotifyClone.historico_reproducoes (
		data_reproducao DATETIME NOT NULL,
		cancao_id INT NOT NULL,
		usuario_id INT NOT NULL,
		CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
		FOREIGN KEY (cancao_id) REFERENCES SpotifyClone.cancoes(cancao_id),
		FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id)
	) ENGINE = InnoDB;

	CREATE TABLE SpotifyClone.seguidor_dos_artistas (
		usuario_id INT NOT NULL,
		artista_id INT NOT NULL,
		CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
		FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id),
		FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
	) ENGINE = InnoDB;
  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');