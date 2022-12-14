CREATE DATABASE IF NOT EXISTS POKEDEX;
USE POKEDEX;

CREATE TABLE IF NOT EXISTS TYPES(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS ABILITIES(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS GENERATION(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(20) NOT NULL UNIQUE,
	MIDIA CHAR(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS GENDER(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS POKEMONS(
	NUMBER INT UNSIGNED NOT NULL PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL UNIQUE,
    DESCRIPTION VARCHAR(1000),
    HEIGHT DECIMAL(5,2) NOT NULL DEFAULT 0,
    WEIGHT DECIMAL(7,3) NOT NULL DEFAULT 0,
    IMAGE VARCHAR(200),
    EVOLVEDFROM INT UNSIGNED,
    GENERATIONID INT UNSIGNED NOT NULL,
    GENDERID INT UNSIGNED NOT NULL
);

ALTER TABLE POKEMONS ADD CONSTRAINT FK_POKEMONS_POKEMONS
	FOREIGN KEY (EVOLVEDFROM) REFERENCES POKEMONS(NUMBER);

ALTER TABLE POKEMONS ADD CONSTRAINT FK_POKEMONS_GENERATION
	FOREIGN KEY (GENERATIONID) REFERENCES GENERATION(ID);

ALTER TABLE POKEMONS ADD CONSTRAINT FK_POKEMONS_GENDER
	FOREIGN KEY (GENDERID) REFERENCES GENDER(ID);

CREATE TABLE IF NOT EXISTS POKEMONTYPES(
	POKEMONNUMBER INT UNSIGNED NOT NULL,
    TYPEID INT UNSIGNED NOT NULL,
    PRIMARY KEY(POKEMONNUMBER, TYPEID)
);

ALTER TABLE POKEMONTYPES ADD CONSTRAINT FK_POKEMONTYPES_POKEMON
	FOREIGN KEY(POKEMONNUMBER) REFERENCES POKEMONS(NUMBER);

ALTER TABLE POKEMONTYPES ADD CONSTRAINT FK_POKEMONTYPES_TYPE
	FOREIGN KEY(TYPEID) REFERENCES TYPES(ID);

CREATE TABLE IF NOT EXISTS WEAKNESSES(
	POKEMONNUMBER INT UNSIGNED NOT NULL,
    TYPEID INT UNSIGNED NOT NULL,
    PRIMARY KEY(POKEMONNUMBER, TYPEID)
);

ALTER TABLE POKEMONTYPES ADD CONSTRAINT FK_WEAKNESSES_POKEMON
	FOREIGN KEY(POKEMONNUMBER) REFERENCES POKEMONS(NUMBER);

ALTER TABLE POKEMONTYPES ADD CONSTRAINT FK_WEAKNESSES_TYPE
	FOREIGN KEY(TYPEID) REFERENCES TYPES(ID);

CREATE TABLE IF NOT EXISTS  POKEMONABILITIES(
	ABILITIEID INT UNSIGNED NOT NULL,
    POKEMONNUMBER INT UNSIGNED NOT NULL,
    PRIMARY KEY(ABILITIEID,POKEMONNUMBER)
);

ALTER TABLE POKEMONABILITIES ADD CONSTRAINT FK_POKEMONABILITIES_POKEMON
	FOREIGN KEY(POKEMONNUMBER) REFERENCES POKEMONS(NUMBER);

ALTER TABLE POKEMONABILITIES ADD CONSTRAINT FK_POKEMONABILITIES_ABILITIE
	FOREIGN KEY(ABILITIEID) REFERENCES ABILITIES(ID);