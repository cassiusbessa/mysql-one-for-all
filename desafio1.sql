DROP SCHEMA IF EXISTS `SpotyfiClone`;
CREATE SCHEMA IF NOT EXISTS `SpotifyClone` DEFAULT CHARACTER SET utf8 ;
USE `SpotifyClone` ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Planos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Planos` (
  `id_plano` INT NOT NULL AUTO_INCREMENT,
  `tipo_plano` VARCHAR(45) NOT NULL,
  `valor_plano` DOUBLE NOT NULL,
  PRIMARY KEY (`id_plano`))
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Planos`
VALUES
(1, 'gratuito', 0),
(2, 'universitário', 5.99),
(3, 'pessoal', 6.99),
(4, 'familiar', 7.99);

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Artistas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Artistas` (
  `id_artista` INT NOT NULL AUTO_INCREMENT,
  `nome_artista` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_artista`))
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Artistas`
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon'),
(5, 'Tyler Isle'),
(6, 'Fog');

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Albums` (
  `id_album` INT NOT NULL AUTO_INCREMENT,
  `name_album` VARCHAR(45) NOT NULL,
  `estreia_album` YEAR(4) NOT NULL,
  `id_interprete` INT NOT NULL,
  PRIMARY KEY (`id_album`),
  FOREIGN KEY (`id_interprete`)
	REFERENCES `SpotifyClone`.`Artistas` (`id_artista`))    
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Albums`
VALUES
(1, 'Envious', 1990, 1),
(2, 'Exuberant', 1993, 1),
(3, 'Hallowed Steam', 1995, 2),
(4, 'Incandescent', 1998, 3),
(5, 'Temporary Culture', 2001, 4),
(6, 'Library of liberty', 2003, 4),
(7, 'Chained Down', 2007, 5),
(8, 'Cabinet of fools', 2012, 5),
(9, 'No guarantees', 2015, 5),
(10, 'Apparatus', 2015, 6);
-- -----------------------------------------------------
-- Table `SpotifyClone`.`Musicas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Musicas` (
  `id_musica` INT NOT NULL AUTO_INCREMENT,
  `nome_musica` VARCHAR(45) NOT NULL,
  `duracao_musica` INT NOT NULL,
  `id_interprete` INT NOT NULL,
  `id_collect` INT NOT NULL,
  PRIMARY KEY (`id_musica`),
    FOREIGN KEY (`id_interprete`)
    REFERENCES `SpotifyClone`.`Artistas` (`id_artista`),
    FOREIGN KEY (`id_collect`)
    REFERENCES `SpotifyClone`.`Albums` (`id_album`))
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Musicas`
VALUES
(1, 'Soul For Us', 200, 1, 1),
(2, 'Reflections Of Magic', 163, 1, 1),
(3, 'Dance With Her Own', 116, 1, 1),
(4, 'Troubles Of My Inner Fire', 203, 1, 2),
(5, 'Time Fireworks', 152, 1, 2),
(6, 'Magic Circus', 105, 2, 3),
(7, 'Honey, So Do I', 207, 2, 3),
(8, "Sweetie, Let's Go Wild", 139, 2, 3),
(9, 'She Knows', 244, 2, 3),
(10, 'Fantasy For Me', 100, 3, 4),
(11, 'Celebration Of More', 146, 3, 4),
(12, 'Rock His Everything', 223, 3, 4),
(13, 'Home Forever', 231, 3, 4),
(14, 'Diamond Power', 241, 3, 4),
(15, "Let's Be Silly", 132, 3, 4),
(16, 'Thang Of Thunder', 240, 4, 5),
(17, 'Words Of Her Life', 185, 4, 5),
(18, 'Without My Streets', 176, 4, 5),
(19, 'Need Of The Evening', 190, 4, 6),
(20, 'History Of My Roses', 222, 4, 6),
(21, 'Without My Love', 111, 4, 6),
(22, 'Walking And Game', 123, 4, 6),
(23, 'Young And Father', 197, 4, 6),
(24, 'Finding My Traditions', 179, 5, 7),
(25, 'Walking And Man', 229, 5, 7),
(26, 'Hard And Time', 135, 5, 7),
(27, "Honey, I'm A Lone Wolf", 150, 5, 7),
(28, "She Thinks I Won't Stay Tonight", 166, 5, 8),
(29, "He Heard You're Bad For Me", 154, 5, 8),
(30, "He Hopes We Can't Stay", 210, 5, 8),
(31, 'I Know I Know', 117, 5, 8),
(32, "He's Walking Away", 159, 5, 9),
(33, "He's Trouble", 138, 5, 9),
(34, 'I Heard I Want To Bo Alone', 120, 5, 9),
(35, 'I Ride Alone', 151, 5, 9),
(36, 'Honey', 79, 6, 10),
(37, 'You Cheated On Me', 95, 6, 10),
(38, "Wouldn't It Be Nice", 213, 6, 10),
(39, 'Baby', 136, 6, 10),
(40, 'You Make Me Feel So..', 83, 6, 10);
-- -----------------------------------------------------
-- Table `SpotifyClone`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(45) NOT NULL,
  `idade_usuario` INT NOT NULL,
  `data_assinatura_usuario` DATE NOT NULL,
  `id_assinatura` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
    FOREIGN KEY (`id_assinatura`)
    REFERENCES `SpotifyClone`.`Planos` (`id_plano`))
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Usuario`
VALUES
(1, 'Thati', 23, '2019-10-20', 1),
(2, 'Cintia', 35, '2017-12-30', 4),
(3, 'Bill', 20, '2019-06-05', 2),
(4, 'Roger', 45, '2020-05-13', 3),
(5, 'Norman', 58, '2017-02-17', 3),
(6, 'Patrick', 33, '2017-01-06', 4),
(7, 'Vivian', 26, '2018-01-05', 2),
(8, 'Carol', 19, '2018-02-14', 2),
(9, 'Angelina', 42, '2018-04-29', 4),
(10, 'Paul', 46, '2017-01-17', 4);

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Historico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Historico` (
  `id_usuario_historico` INT NOT NULL,
  `id_musica_historico` INT NOT NULL,
  `horario_reproducao` DATETIME NOT NULL,
  PRIMARY KEY (`id_usuario_historico`, `id_musica_historico`),
    FOREIGN KEY (`id_usuario_historico`)
    REFERENCES `SpotifyClone`.`Usuario` (`id_usuario`),
    FOREIGN KEY (`id_musica_historico`)
    REFERENCES `SpotifyClone`.`Musicas` (`id_musica`))
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Historico`
VALUES
(1, 36, '2020-02-28 10:45:55'),
(1, 25, '2020-05-02 05:30:35'),
(1, 23, '2020-03-06 11:22:33'),
(1, 14, '2020-08-05 08:05:17'),
(1, 15, '2020-09-14 16:32:22'),
(2, 34, '2020-01-02 07:40:33'),
(2, 24, '2020-05-16 06:16:22'),
(2, 21, '2020-10-09 12:27:48'),
(2, 39, '2020-09-21 13:14:46'),
(3, 6, '2020-11-13 16:55:13'),
(3, 3, '2020-12-05 18:38:30'),
(3, 26, '2020-07-30 10:00:00'),
(4, 2, '2021-08-15 17:10:10'),
(4, 35, '2021-07-10 15:20:30'),
(4, 27, '2021-01-09 01:44:33'),
(5, 7, '2020-07-03 19:33:28'),
(5, 12, '2017-02-24 21:14:22'),
(5, 14, '2020-08-06 15:23:43'),
(5, 1, '2020-11-10 13:52:27'),
(6, 38, '2019-02-07 20:33:48'),
(6, 29, '2017-01-24 00:31:17'),
(6, 30, '2017-10-12 12:35:20'),
(6, 22, '2018-05-29 14:56:41'),
(7, 5, '2018-05-09 22:30:49'),
(7, 4, '2020-07-27 12:52:58'),
(7, 11, '2018-01-16 18:40:43'),
(8, 39, '2018-03-21 16:56:40'),
(8, 40, '2020-10-18 13:38:05'),
(8, 32, '2019-05-25 08:14:03'),
(8, 33, '2021-08-15 21:37:09'),
(9, 16, '2021-05-24 17:23:45'),
(9, 17, '2018-12-07 22:48:52'),
(9, 8, '2021-03-14 06:14:26'),
(9, 9, '2020-04-01 03:36:00'),
(10, 20, '2017-02-06 08:21:34'),
(10, 21, '2017-12-04 05:33:43'),
(10, 12, '2017-07-27 05:24:49'),
(10, 13, '2017-12-25 01:03:57');




-- -----------------------------------------------------
-- Table `SpotifyClone`.`Seguindo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`Seguindo` (
  `Usuario_id_usuario` INT NOT NULL,
  `Artistas_id_artista` INT NOT NULL,
  PRIMARY KEY (`Usuario_id_usuario`, `Artistas_id_artista`),
    FOREIGN KEY (`Usuario_id_usuario`)
    REFERENCES `SpotifyClone`.`Usuario` (`id_usuario`),
    FOREIGN KEY (`Artistas_id_artista`)
    REFERENCES `SpotifyClone`.`Artistas` (`id_artista`))
ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`Seguindo`
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4),
(5, 6),
(5, 5),
(6, 6),
(6, 3),
(6, 1),
(7, 2),
(7, 5),
(8, 1),
(8, 5),
(9, 6),
(9, 4),
(9, 3),
(10, 2),
(10, 6);



