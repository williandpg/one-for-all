DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plan(
    plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(50) NOT NULL,
    price DOUBLE NOT NULL
) engine = InnoDB;
INSERT INTO SpotifyClone.plan (plan_id, plan_name, price)
VALUES
    ('1', 'gratuito', '0.00'),
    ('2', 'universitário', '5.99'),
    ('3', 'pessoal', '6.99'),
    ('4', 'familiar', '7.99');

CREATE TABLE SpotifyClone.artist(
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(50)
) engine = InnoDB;
INSERT INTO SpotifyClone.artist (artist_id, artist_name)
VALUES
    ('1', 'Beyoncé'),
    ('2', 'Queen'),
    ('3', 'Elis Regina'),
    ('4', 'Baco Exu do Blues'),
    ('5', 'Blind Guardian'),
    ('6', 'Nina Simone');

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(50),
    artist_id INT,
    release_year INT,
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id)
);
INSERT INTO SpotifyClone.album (album_id, album_name, artist_id, release_year)
VALUES
    ('1', 'Renaissance', '1', '2022'),
    ('2', 'Jazz', '2', '1978'),
    ('3', 'Hot Space', '2', '1982'),
    ('4', 'Falso Brilhante', '3', '1998'),
    ('5', 'Vento de Maio', '3', '2001'),
    ('6', 'QVVJFA?', '4', '2003'),
    ('7', 'Somewhere Far Beyond', '5', '2007'),
    ('8', 'I Put A Spell On You', '6', '2012');

CREATE TABLE SpotifyClone.song(
    song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(50),
    album_id INT,
    duration INT,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id)
);
INSERT INTO SpotifyClone.song (song_id, song_name, album_id, duration)
VALUES
    ('1', 'BREAK MY SOUL', '1', '279'),
    ('2', 'VIRGO''S GROOVE', '1', '369'),
    ('3', 'ALIEN SUPERSTAR', '1', '116'),
    ('4', 'Don''t Stop Me Now', '2', '203'),
    ('5', 'Under Pressure', '3', '152'),
    ('6', 'Como Nossos Pais', '4', '105'),
    ('7', 'O Medo de Amar é o Medo de Ser Livre', '5', '207'),
    ('8', 'Samba em Paris', '6', '267'),
    ('9', 'The Bard`s Song', '7', '244'),
    ('10', 'Feeling Good', '8', '100');

CREATE TABLE SpotifyClone.user(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50),
    age INT,
    plan_id INT,
    date_start DATE,
    FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan(plan_id)
);
INSERT INTO SpotifyClone.user (user_id, user_name, age, plan_id, date_start)
VALUES
    ('1', 'Barbara Liskov', '82', '1', '2019-10-20'),
	('2', 'Robert Cecil Martin', '58', '1', '2017-01-06'),
	('3', 'Ada Lovelace', '37', '4', '2017-12-30'),
	('4', 'Martin Fowler', '46', '4', '2017-01-17'),
	('5', 'Sandi Metz', '58', '4', '2018-04-29'),
	('6', 'Paulo Freire', '19', '2', '2018-02-14'),
	('7', 'Bell Hooks', '26', '2', '2018-01-05'),
	('8', 'Christopher Alexander', '85', '3', '2019-06-05'),
	('9', 'Judith Butler', '45', '3', '2020-05-13'),
	('10', 'Jorge Amado', '58', '3', '2017-02-17');

CREATE TABLE SpotifyClone.follow_artist (
    user_id INT,
    artist_id INT,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.user(user_id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist(artist_id)
);
INSERT INTO SpotifyClone.follow_artist (user_id, artist_id)
VALUES
    ('1', '1'),
    ('1', '2'),
    ('1', '3'),
    ('2', '1'),
    ('2', '3'),
    ('3', '2'),
    ('4', '4'),
    ('5', '5'),
    ('5', '6'),
    ('6', '1'),
    ('6', '6'),
    ('7', '6'),
    ('9', '3'),
    ('10', '2');

CREATE TABLE SpotifyClone.history(
    user_id INT,
    song_id INT,
    date_reproduction DATE,
    CONSTRAINT PRIMARY KEY(user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.user(user_id),
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.song(song_id)
);
INSERT INTO SpotifyClone.history (user_id, song_id, date_reproduction)
VALUES
    ('1', '8', '2022-02-28'),
	('1', '2', '2020-05-02'),
	('1', '10', '2020-03-06'),
	('2', '10', '2022-08-05'),
	('2', '7', '2020-01-02'),
	('3', '10', '2020-11-13'),
	('3', '2', '2020-12-05'),
	('4', '8', '2021-08-15'),
	('5', '8', '2022-01-09'),
	('5', '5', '2020-08-06'),
	('6', '7', '2017-01-24'),
	('6', '1', '2017-10-12'),
	('7', '4', '2011-12-15'),
	('8', '4', '2012-03-17'),
	('9', '9', '2022-02-24'),
	('10', '3', '2015-12-13');