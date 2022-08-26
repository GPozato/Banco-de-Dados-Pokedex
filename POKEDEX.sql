INSERT INTO types(NAME) VALUES ('Normal');
INSERT INTO types(NAME) VALUES ('Planta');
INSERT INTO types(NAME) VALUES ('Fogo');
INSERT INTO types(NAME) VALUES ('Agua');
INSERT INTO types(NAME) VALUES ('Fantasma');
INSERT INTO types(NAME) VALUES ('Pedra');
INSERT INTO types(NAME) VALUES ('Venenoso');
INSERT INTO types(NAME) VALUES ('Voador');
INSERT INTO types(NAME) VALUES ('Psiquico');
INSERT INTO types(NAME) VALUES ('Eletrico');
INSERT INTO types(NAME) VALUES ('Metal');
INSERT INTO types(NAME) VALUES ('Dragão');
INSERT INTO types(NAME) VALUES ('Fada');
INSERT INTO types(NAME) VALUES ('Lutador');
INSERT INTO types(NAME) VALUES ('Inseto');
INSERT INTO types(NAME) VALUES ('Terrestre');
INSERT INTO types(NAME) VALUES ('Gelo');

INSERT INTO gender(NAME) VALUES ('Masculino');
INSERT INTO gender(NAME) VALUES ('Feminino');
INSERT INTO gender(NAME) VALUES ('Ambos');
INSERT INTO gender(NAME) VALUES ('Desconhecido');

INSERT INTO generation(NAME, MIDIA) VALUES('Kanto', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Johto', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Hoenn', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Sinnoh', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Unova', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Kalos', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Alola', 'D');
INSERT INTO generation(NAME, MIDIA) VALUES('Galar', 'D');

INSERT INTO pokemons(NUMBER, GENERATIONID, GENDERID, NAME, HEIGHT, WEIGHT) VALUES
(1, 1, 3, 'Bulbasaur', 0.7, 6.9);

INSERT INTO pokemontypes VALUES(1, 2), (1, 7);

INSERT INTO pokemons(NUMBER, EVOLVEDFROM, GENERATIONID, GENDERID, NAME, DESCRIPTION, HEIGHT, WEIGHT, IMAGE) VALUES
(2, 1, 1, 3, 'Ivysaur', null, 1, 13, null),
(3, 2, 1, 3, 'Venusaur', null, 2, 100, null),
(4, null, 1, 3, 'Charmander', null, 0.6, 8.5, null),
(5, 4, 1, 3, 'Charmeleon', null, 1.1, 19, null),
(6, 5, 1, 3, 'Charizard', null, 1.7, 90.5, null);

INSERT INTO pokemontypes VALUES
(2, 2), (2, 5),
(3, 2), (3, 5),
(4, 3),
(5, 3),
(6, 3), (6, 6);