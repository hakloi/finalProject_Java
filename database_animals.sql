CREATE DATABASE humanFriends;
USE humanFriends;

CREATE TABLE IF NOT EXISTS cats(
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name VARCHAR(100) NOT NULL,
    birth DATE NOT NULL,
    commands TEXT
);
CREATE TABLE IF NOT EXISTS dogs(
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name VARCHAR(100) NOT NULL,
    birth DATE NOT NULL,
    commands TEXT
);
CREATE TABLE IF NOT EXISTS hamsters(
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name VARCHAR(100) NOT NULL,
    birth DATE NOT NULL,
    commands TEXT
);
CREATE TABLE IF NOT EXISTS horses(
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name VARCHAR(100) NOT NULL,
    birth DATE NOT NULL,
    commands TEXT
);
CREATE TABLE IF NOT EXISTS camels(
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name VARCHAR(100) NOT NULL,
    birth DATE NOT NULL,
    commands TEXT
);
CREATE TABLE IF NOT EXISTS donkies(
	id INT PRIMARY KEY AUTO_INCREMENT,
	animal_name VARCHAR(100) NOT NULL,
    birth DATE NOT NULL,
    commands TEXT
);

INSERT INTO cats (animal_name, birth, commands)
VALUES ('Mr meow', '2017-02-27', 'meow');

INSERT INTO dogs (animal_name, birth, commands)
VALUES ('Bark', '2018-02-27', 'bark'),
('Pluto', '2022-02-27', 'bark, double bark');

INSERT INTO hamsters (animal_name, birth, commands)
VALUES ('NomNom', '2023-09-27', 'squeek');

INSERT INTO horses (animal_name, birth, commands)
VALUES ('Black Raven', '2012-08-19', 'run around');

INSERT INTO camels (animal_name, birth, commands)
VALUES ('Chill', '2017-03-07', 'drink water');

INSERT INTO donkies (animal_name, birth, commands)
VALUES ('Donley', '2017-02-27', 'talk');

DROP TABLE camels;
INSERT INTO horses (animal_name, birth, commands)
SELECT animal_name, birth, commands
FROM donkies;

DROP TABLE donkies;

RENAME TABLE horses TO horses_donkies;

CREATE TABLE IF NOT EXISTS young_animals(
  id INT PRIMARY KEY AUTO_INCREMENT,
  animal_name VARCHAR(100) NOT NULL,
  birth DATE NOT NULL,
  age INT
);

INSERT INTO young_animals (animal_name, birth, age)
SELECT animal_name, birth, TIMESTAMPDIFF(MONTH, birth, CURDATE()) AS age
FROM cats
WHERE birth > DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND birth < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION
SELECT animal_name, birth, TIMESTAMPDIFF(MONTH, birth, CURDATE()) AS age
FROM dogs
WHERE birth > DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND birth < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION
SELECT animal_name, birth, TIMESTAMPDIFF(MONTH, birth, CURDATE()) AS age
FROM hamsters
WHERE birth > DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND birth < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
UNION
SELECT animal_name, birth, TIMESTAMPDIFF(MONTH, birth, CURDATE()) AS age
FROM horses_donkies
WHERE birth > DATE_SUB(CURDATE(), INTERVAL 3 YEAR) AND birth < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

CREATE TABLE IF NOT EXISTS all_animals(
  id INT PRIMARY KEY AUTO_INCREMENT,
  animal_name VARCHAR(100) NOT NULL,
  birth DATE NOT NULL,
  commands TEXT,
  species VARCHAR(100) NOT NULL,
  old_table VARCHAR(100) NOT NULL
);

INSERT INTO all_animals (animal_name, birth, commands, species, old_table)
SELECT animal_name, birth, commands, 'cat', 'cats'
FROM cats
UNION
SELECT animal_name, birth, commands, 'dog', 'dogs'
FROM dogs
UNION
SELECT animal_name, birth, commands, 'hamster', 'hamsters'
FROM hamsters
UNION
SELECT animal_name, birth, commands, 'horse', 'horses_donkies'
FROM horses_donkies;