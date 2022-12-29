9/* Lógico_1: */

CREATE TABLE Pokemon (
    pokemon_nome VARCHAR,
    pokemon_id INTEGER UNIQUE,
    hp FLOAT,
    ataque FLOAT, 
    defesa FLOAT, 
    ataque_especial FLOAT, 
    defesa_especial FLOAT, 
    velocidade FLOAT,
    evolucao BOOLEAN,
    num_vitorias INTEGER,
    num_derrotas INTEGER,
    pokemon_altura FLOAT,
    pokemon_peso VARCHAR, 
    habilidades VARCHAR,
    tipo_pokemon VARCHAR,
    fraquezas VARCHAR,
    PRIMARY KEY (pokemon_id, pokemon_nome)
);

CREATE TABLE Pokebola (
    pokebola_id INTEGER PRIMARY KEY,
    tipo_pokebola VARCHAR,
    qtde_pokemons INTEGER
);

CREATE TABLE Treinador (
    treinador_nome VARCHAR,
    treinador_id INTEGER,
    xp FLOAT,
    num_pokebolas INTEGER,
    PRIMARY KEY (treinador_nome, treinador_id)
);

CREATE TABLE Duelo (
    duelo_id INTEGER PRIMARY KEY,
    nome_treinador1 VARCHAR,
    nome_treinador2 VARCHAR,
    duelo_horario VARCHAR
);

CREATE TABLE Evolucao (
    evo_nome VARCHAR,
    evo_id INTEGER PRIMARY KEY,
    evo_hp FLOAT,
    evo_ataque FLOAT,
    evo_defesa FLOAT,
    evo_ataque_esp FLOAT,
    evo_defesa_esp FLOAT,
    evo_velocidade FLOAT,
    evolucao BOOLEAN, 
    evo_vitorias INTEGER, 
    evo_derrotas INTEGER,
    evo_altura FLOAT,
    evo_peso FLOAT,
    evo_habilidades VARCHAR,
    evo_tipo VARCHAR,
    evo_fraquezas VARCHAR
);

CREATE TABLE Pokemons_em_batalha (
    id_pokemon_batalha INTEGER PRIMARY KEY,
    nome_pokemon_batalha VARCHAR,
    nome_habilidade VARCHAR,
    dano_causado FLOAT,
    dano_recebido FLOAT,
    hora_saida VARCHAR,
    hora_retorno VARCHAR
);

CREATE TABLE Sao_capturados_em_Pokemon_Pokebola_Evolucao (
    fk_Pokemon_pokemon_id INTEGER,
    fk_Pokemon_pokemon_nome VARCHAR,
    fk_Pokebola_pokebola_id INTEGER,
    fk_Evolucao_evo_id INTEGER
);

CREATE TABLE E_usado_por (
    fk_Pokebola_pokebola_id INTEGER,
    fk_Treinador_treinador_nome VARCHAR,
    fk_Treinador_treinador_id INTEGER
);

CREATE TABLE Pode_ter (
    fk_Evolucao_evo_id INTEGER,
    fk_Pokemon_pokemon_id INTEGER,
    fk_Pokemon_pokemon_nome VARCHAR
);

CREATE TABLE Possui (
    fk_Pokemons_em_batalha_id_pokemon_batalha INTEGER,
    fk_Treinador_treinador_nome VARCHAR,
    fk_Treinador_treinador_id INTEGER
);

CREATE TABLE Realiza (
    fk_Treinador_treinador_nome VARCHAR,
    fk_Treinador_treinador_id INTEGER,
    fk_Duelo_duelo_id INTEGER
);

CREATE TABLE Acontece_com (
    fk_Duelo_duelo_id INTEGER,
    fk_Pokemons_em_batalha_id_pokemon_batalha INTEGER
);

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('bulbasaur', 1, 3, 3, 3, 4, 4, 3, true, 1, 0, 0.7, 6.9, 'overgrow', 'grass, poison', 'fire, psychic, flying, ice');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('charmander', 4, 3, 4, 3, 4, 3, 4, true, 2, 2, 0.6, 8.5, 'blaze', 'fire', 'water, ground, rock');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('squirtle', 7, 3, 3, 4, 3, 4, 3, true, 4, 3, 0.5, 9.0, 'torrent', 'water', 'grass, eletric');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('caterpie', 10, 3, 2, 3, 2, 2, 3, true, 0, 3, 0.3, 2.9, 'shield dust', 'bug', 'fire, flying, rock');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('weedle', 13, 3, 3, 2, 2, 2, 3, true, 0, 5, 0.3, 3.2, 'shield dust', 'bug, poison', 'fire, psychic, flying, rock');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('pigdey', 16, 3, 3, 3, 3, 3, 4, true, 5, 1, 0.3, 1.8, 'keen eye, tangled feet', 'normal, flying', 'eletric, ice, rock');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('rattata', 19, 2, 4, 3, 2, 3, 5, true, 1, 4, 0.3, 3.5, 'run away, guts', 'normal', 'fighting');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('delibird', 225, 3, 4, 3, 4, 3, 5, false, 2, 7, 0.9, 16.0, 'vital spirit, hustle', 'ice, flying', 'steel, fire, eletric, rock');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('magnemite', 81, 2, 3, 5, 6, 4, 3, true, 2, 5, 0.3, 6.0, 'sturdy, magnet pull', 'normal', 'fire, fighting, ground');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('gastly', 92, 2, 3, 2, 6, 3, 5, true, 8, 3, 1.3, 0.1, 'levitate', 'ghost, gas', 'ghost, dark, physhic, ground');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('onix', 95, 3, 3, 10, 2, 3, 5, true, 7, 0, 8.8, 210.0, 'rock head, sturdy', 'rock, ground', 'steel, fighting, water, ice, grass, ground');

INSERT INTO pokemon (pokemon_nome, pokemon_id, hp, ataque, defesa, ataque_especial, 
defesa_especial, velocidade, evolucao, num_vitorias, num_derrotas, pokemon_altura, 
pokemon_peso, habilidades, tipo_pokemon, fraquezas) 
VALUES ('pichu', 172, 2, 3, 1, 3, 3, 4, true, 2, 5, 0.3, 2.0, 'static', 'eletric', 'ground');

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('zeca', 1, 99.51, 1);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('gloria', 2, 321.89, 3);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('joão', 3, 213.8, 5);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ana', 4, 0.0, 0);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ash ketchum', 5, 900.83, 12);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('galadriel', 6, 800.3, 6);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('yugi', 7, 567.65, 4);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('yuri', 8, 10.6, 23);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('mike', 9, 0.0, 6);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('bell', 10, 765.9, 21);

/*10trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('maria', 11, 555.4, 32);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('cristina', 12, 943.1, 23);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('tereza', 13, 227.52, 55);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('oliver', 14, 600.0, 0);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('goku', 15, 133.66, 1);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('harry', 16, 889.4, 6);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('clark', 17, 664.0, 11);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('diana', 18, 100.0, 13);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('bruce', 19, 3.6, 2);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('barry', 20, 47.9, 8);

/*20trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('killy', 21, 88.4, 4);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('agni', 22, 44.1, 8);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('luna', 23, 22.52, 12);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('yuda', 24, 60.0, 20);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('simon', 25, 13.66, 16);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('togata', 26, 89.4, 28);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('denji', 27, 64.0, 24);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('aki', 28, 105.0, 44);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('power', 29, 308.6, 32);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('himeno', 30, 471.9, 0);

/*30trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('salazar', 31, 8.4, 9);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('arya', 32, 4.1, 11);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('john', 33, 2.52, 7);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('sansa', 34, 0.0, 3);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('cersei', 35, 3.66, 1);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('rhaenyra', 36, 9.4, 1);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('alicent', 37, 4.0, 5);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('viserys', 38, 5.0, 21);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('daemon', 39, 8.6, 17);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('aemond', 40, 71.9, 19);

/*40trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('miauzinho', 41, 50.5, 1);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('jorge', 42, 700.0, 10);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('billy', 43, 600.0, 9);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('princesa', 44, 200.0, 8);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ronaldo', 45, 100.0, 7);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('mc poze do rodo', 46, 300.0, 6);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('carminha', 47, 400.0, 5);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('josh', 48, 500.0, 4);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('tyler', 49, 800.0, 3);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('joseph', 50, 900.0, 2);

/*50trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('jonathan', 51, 0.5, 21);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('erina', 52, 70.0, 10);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('dio', 53, 60.0, 19);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('speedwagon', 54, 20.0, 38);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ceasar', 55, 10.0, 47);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('kars', 56, 30.0, 26);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('wham', 57, 40.0, 35);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('jotaro', 58, 50.0, 43);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('polnareff', 59, 80.0, 32);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('kakyoin', 60, 90.0, 21);

/*60trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('blood', 61, 111.11, 14);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('darkness', 62, 222.22, 16);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('eternity', 63, 333.33, 0);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('control', 64, 299.12, 13);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('war', 65, 444.4, 17);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('shark', 66, 555.55, 15);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('violence', 67, 666.66, 37);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('spider', 68, 777.77, 2);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('snake', 69, 888.88, 9);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('katana', 70, 999.99, 1);

/*70trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('oráculo', 71, 67.3, 0);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('batgirl', 72, 74.9, 10);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('batman', 73, 160.18, 5);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('asa noturna', 74, 250.08, 20);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('robin vermelho', 75, 159.3, 50);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('caçadora', 76, 390.87, 45);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('capuz vermelho', 77, 490.50, 30);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('batwoman', 78, 950.9, 5);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('azrael', 79, 800.0, 15);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('gordon', 80, 0.0, 25);

/*80trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('jake', 81, 676.3, 3);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('finn', 82, 747.9, 11);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('thomas', 83, 601.18, 50);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('jerry', 84, 502.08, 32);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('zoro', 85, 591.3, 17);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('jason', 86, 903.87, 22);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('luigi', 87, 904.50, 13);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('mario', 88, 509.9, 21);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('peach', 89, 8.38, 12);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('zack', 90, 765.76, 9);

/*90trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('matt', 91, 673.0, 19);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('gwen', 92, 749.9, 18);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('peter', 93, 601.8, 17);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('shiro', 94, 500.28, 16);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('kuro', 95, 593.31, 15);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('orochi', 96, 908.73, 14);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('kurama', 97, 905.04, 13);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('yuko', 98, 509.99, 12);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('anthony', 99, 0.8, 11);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('juscelino', 100, 453.5, 10);

/*100trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('nix', 101, 376.0, 39);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('hades', 102, 947.0, 38);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('morpheus', 103, 810.61, 37);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('perseu', 104, 800.52, 36);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('thanatos', 105, 395.1, 35);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('hipnos', 106, 780.93, 34);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('meggara', 107, 50.94, 33);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('persefones', 108, 905.9, 32);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('hermes', 109, 846.29, 31);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ártemis', 110, 9.97, 30);

/*110trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('sebastião', 111, 36.3, 50);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('siegfried', 112, 47.9, 40);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('collapsar', 113, 181.06, 30);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('black mage', 114, 280.05, 20);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('yurari', 115, 139.51, 10);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('magma dragoon', 116, 380.9, 0);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('storm eagle', 117, 450.93, 10);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('chill penguin', 118, 990.59, 20);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('wire sponge', 119, 984.62, 30);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('bison', 120, 79.97, 40);

/*20trainer*/

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('chun li', 121, 1.0, 0);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ken', 122, 2.0, 2);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('ryo', 123, 3.0, 1);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('akuma', 124, 4.0, 5);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('guile', 125, 5.0, 3);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('nobu', 126, 6.0, 4);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('kazuma', 127, 7.0, 23);

INSERT INTO treinador (treinador_nome, treinador_id, xp, num_pokebolas)
VALUES ('cleiton', 128, 8.0, 15);

INSERT INTO pokebola (pokebola_id, tipo_pokebola, qtde_pokemons)
VALUES (1, 'normal', 15);

INSERT INTO pokebola (pokebola_id, tipo_pokebola, qtde_pokemons)
VALUES (2, 'greatball', 25);

INSERT INTO pokebola (pokebola_id, tipo_pokebola, qtde_pokemons)
VALUES (3, 'ultraball', 40);

INSERT INTO pokebola (pokebola_id, tipo_pokebola, qtde_pokemons)
VALUES (4, 'masterball', 50);

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('ivysaur', 2, 4, 4, 4, 5, 5, 4, true, 1, 1, 1.0, 13.0, 'overgrow', 'grass, poison', 'fire, psychic, flying, ice');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('venusaur', 3, 5, 5, 5, 6, 6, 5, false, 2, 1, 2.0, 100.0, 'overgrow', 'grass, poison', 'fire, psychic, flying, ice');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('charmeleon', 5, 4, 4, 4, 5, 4, 5, true, 3, 2, 1.1, 19.0, 'blaze', 'fire', 'water, ground, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('charizard', 6, 5, 5, 5, 7, 5, 6, false, 3, 3, 1.7, 90.5, 'blaze', 'fire, flying', 'water, eletric, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('wartortle', 8, 4, 4, 5, 4, 5, 4, true, 4, 4, 1.0, 22.5, 'torrent', 'water', 'grass, eletric');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('blastoise', 9, 5, 5, 6, 5, 7, 5, false, 4, 4, 1.6, 85.5, 'torrent', 'water', 'grass, eletric');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('metapod', 11, 3, 2, 4, 2, 2, 2, true, 1, 3, 0.7, 9.9, 'shed skin', 'bug', 'fire, flying, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('butterfree', 12, 4, 3, 3, 6, 5, 5, false, 3, 4, 1.1, 32.0, 'compound eyes', 'bug, flying', 'fire, flying, eletric, ice, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('kakuna', 14, 3, 2, 3, 2, 2, 3, true, 0, 2, 0.6, 10.0, 'shed skin', 'bug, poison', 'fire, psychic, flying, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('beedrill', 15, 4, 6, 3, 3, 5, 5, false, 2, 2, 1.0, 29.5, 'swarm', 'bug, poison', 'fire, psychic, flying, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('pidgeotto', 17, 4, 4, 4, 3, 3, 5, true, 4, 8, 1.1, 30.0, 'keen eye, tangled feet', 'normal, flying', 'eletric, ice, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('pidgeot', 18, 5, 5, 5, 5, 5, 6, false, 13, 7, 1.5, 39.5, 'keen eye, tangled feet', 'normal, flying', 'eletric, ice, rock');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas)
VALUES ('raticate', 20, 4, 5, 4, 3, 5, 6, false, 1, 3, 0.7, 18.5, 'keen eye, tangled feet', 'normal', 'fighting');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('magneton', 82, 3, 4, 6, 8, 5, 5, true, 15, 3, 1.0, 60.0, 'sturdy, magnet pull', 'normal', 'fire, fighting, ground');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('magnezone', 462, 5, 5, 7, 8, 6, 4, false, 20, 11, 1.2, 180.0, 'sturdy, magnet pull', 'normal', 'fire, fighting, ground');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('haunter', 93, 3, 3, 3, 7, 4, 6, true, 5, 3, 1.6, 0.1, 'levitate', 'ghost, gas', 'ghost, dark, physhic, ground');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('gengar', 94, 4, 4, 4, 8, 5, 7, false, 21, 13, 1.5, 40.5, 'cursed body', 'ghost, poison', 'ghost, dark, physhic, ground');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('steelix', 208, 5, 5, 12, 4, 4, 2, false, 8, 8, 9.2, 400.0, 'rock head, sturdy', 'rock, ground', 'fire, fighting, water, ground');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('pikachu', 25, 3, 4, 3, 3, 3, 6, true, 7, 3, 0.4, 6.0, 'static', 'eletric', 'ground');

INSERT INTO evolucao (evo_nome, evo_id, evo_hp, evo_ataque, evo_defesa , evo_ataque_esp, 
evo_defesa_esp, evo_velocidade, evolucao, evo_vitorias, evo_derrotas, evo_altura, evo_peso,
evo_habilidades, evo_tipo,evo_fraquezas) 
VALUES ('raichu', 26, 4, 6, 4, 6, 5, 7, false, 18, 10, 0.8, 30.0, 'static', 'eletric', 'ground');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (1, 'zeca', 'gloria', '13:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (2, 'joão','ana', '13:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (3, 'ash ketchum','galadriel', '14:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (4, 'yugi','yuri', '14:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (5, 'mike','bell', '15:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (6, 'maria','cristina', '15:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (7, 'tereza','oliver', '16:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (8, 'goku','harry', '16:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (9, 'clark','diana', '17:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (10,'bruce','barry', '17:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (11, 'killy','agni', '18:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (12, 'luna','yuda', '18:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (13, 'simon','togata', '19:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (14, 'denji','aki', '19:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (15, 'power','himeno', '20:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (16, 'salazar','arya', '20:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (17, 'john','sansa', '21:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (18, 'cersei','rhaenyra', '21:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (19, 'alicent','viserys', '22:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (20, 'daemon','aemond', '22:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (21, 'miauzinho','jorge', '23:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (22, 'billy','princesa', '23:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (23, 'ronaldo','mc poze do rodo', '00:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (24, 'carminha','josh', '00:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (25, 'tyler','joseph', '1:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (26, 'jonathan','erina', '1:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (27, 'dio','speedwagon', '2:00');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (28, 'ceasar','kars', '2:30');
 
INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (29, 'wham','jotaro', '3:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (30, 'polnareff','kakyoin', '3:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (31, 'blood','darkness', '4:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (32, 'eternity','control', '4:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (33, 'war', 'shark', '5:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (34, 'violence', 'spider', '5:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (35, 'snake', 'katana', '6:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (36, 'oráculo', 'batgirl', '13:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (37, 'batman', 'asa noturna', '13:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (38, 'robin vermelho', 'caçadora', '14:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (39, 'capuz vermelho', 'batwoman', '14:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (40, 'azrael', 'gordon', '15:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (41, 'jake', 'finn', '15:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (42, 'thomas', 'jerry', '16:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (43, 'zoro', 'jason', '16:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (44, 'luigi', 'mario', '17:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (45, 'peach', 'zack', '17:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (46, 'matt', 'gwen', '18:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (47, 'peter', 'shiro', '18:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (48, 'kuro', 'orochi', '19:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (49, 'kurama', 'yuko', '19:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (50, 'anthony', 'juscelino', '20:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (51, 'nix', 'hades', '21:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (52, 'morpheus', 'perseu', '21:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (53, 'thanatos', 'hipnos', '22:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (54, 'meggara', 'persefones', '22:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (55, 'hermes', 'ártemis', '23:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (56, 'sebastião', 'siegfried', '23:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (57, 'collapsar', 'black mage', '00:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (58, 'yurari', 'magma dragoon', '00:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (59, 'storm eagle', 'chill penguin', '1:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (60, 'wire sponge', 'bison', '1:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (61, 'chun li', 'ken', '2:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (62, 'ryo', 'akuma', '2:30');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (63, 'guile', 'nobu', '3:00');

INSERT INTO duelo (duelo_id, nome_treinador1, nome_treinador2, duelo_horario)
VALUES (64, 'kazuma', 'cleiton', '3:30');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (1, 'bulbasaur', 'overgrow', 4, 8, '13:05','13:06');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (4, 'charmander', 'blaze', 3, 4,'13:05','13:20');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (7, 'squirtle', 'torrent', 3, 2,'13:06','13:10');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (10, 'caterpie', 'shield dust', 2, 3,'13:15','13:20');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (13, 'weedle', 'shield dust', 2, 3,'13:21:','13:30');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (16, 'pigdey', 'tangled feet', 3, 2,'13:25','13:28');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (19, 'rattata', 'guts', 0, 3,'13:26','13:27');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (92, 'gastly', 'levitate', 4, 2,'13:31','13:39');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (172, 'pichu', 'static', 4, 3,'13:31','13:32');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (15, 'beedrill', 'magnet pull', 5, 3,'13:33','13:50');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (2, 'ivysaur', 'overgrow', 5, 2,'13:32','13:45');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (93, 'haunter', 'levitate', 6, 3,'13:40','13:59');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (18, 'pidgeot', 'keen eye', 1, 4,'13:40','13:59');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (20, 'raticate', 'tangled feet', 3, 2,'14:00','14:10');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (9, 'blastoise', 'torrent', 5, 1,'14:00','14:15');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (94, 'gengar', 'cursed body', 10, 4,'14:00','14:21');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (6, 'charizard', 'blaze', 4, 10,'14:01','14:05');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (25, 'pikachu', 'static', 7, 3,'14:01','14:11');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (208, 'steelix', 'rock head', 12, 11,'14:31','14:59');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (26, 'raichu', 'torrent', 3, 2,'14:46','14:56');

INSERT INTO pokemons_em_batalha (id_pokemon_batalha, nome_pokemon_batalha, nome_habilidade, 
dano_causado, dano_recebido, hora_saida, hora_retorno)
VALUES (225, 'delibird', 'blaze', 3, 4,'14:02','14:39');

ALTER TABLE Sao_capturados_em_Pokemon_Pokebola_Evolucao ADD CONSTRAINT FK_Sao_capturados_em_Pokemon_Pokebola_Evolucao_1
    FOREIGN KEY (fk_Pokemon_pokemon_id, fk_Pokemon_pokemon_nome)
    REFERENCES Pokemon (pokemon_id, pokemon_nome)
    ON DELETE NO ACTION;
 
ALTER TABLE Sao_capturados_em_Pokemon_Pokebola_Evolucao ADD CONSTRAINT FK_Sao_capturados_em_Pokemon_Pokebola_Evolucao_2
    FOREIGN KEY (fk_Pokebola_pokebola_id)
    REFERENCES Pokebola (pokebola_id)
    ON DELETE NO ACTION;
 
ALTER TABLE Sao_capturados_em_Pokemon_Pokebola_Evolucao ADD CONSTRAINT FK_Sao_capturados_em_Pokemon_Pokebola_Evolucao_3
    FOREIGN KEY (fk_Evolucao_evo_id)
    REFERENCES Evolucao (evo_id)
    ON DELETE NO ACTION;
 
ALTER TABLE E_usado_por ADD CONSTRAINT FK_E_usado_por_1
    FOREIGN KEY (fk_Pokebola_pokebola_id)
    REFERENCES Pokebola (pokebola_id)
    ON DELETE SET NULL;
 
ALTER TABLE E_usado_por ADD CONSTRAINT FK_E_usado_por_2
    FOREIGN KEY (fk_Treinador_treinador_nome, fk_Treinador_treinador_id)
    REFERENCES Treinador (treinador_nome, treinador_id)
    ON DELETE SET NULL;
 
ALTER TABLE Pode_ter ADD CONSTRAINT FK_Pode_ter_1
    FOREIGN KEY (fk_Evolucao_evo_id)
    REFERENCES Evolucao (evo_id)
    ON DELETE SET NULL;
 
ALTER TABLE Pode_ter ADD CONSTRAINT FK_Pode_ter_2
    FOREIGN KEY (fk_Pokemon_pokemon_id, fk_Pokemon_pokemon_nome)
    REFERENCES Pokemon (pokemon_id, pokemon_nome)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_Pokemons_em_batalha_id_pokemon_batalha)
    REFERENCES Pokemons_em_batalha (id_pokemon_batalha)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_Treinador_treinador_nome, fk_Treinador_treinador_id)
    REFERENCES Treinador (treinador_nome, treinador_id)
    ON DELETE SET NULL;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_1
    FOREIGN KEY (fk_Treinador_treinador_nome, fk_Treinador_treinador_id)
    REFERENCES Treinador (treinador_nome, treinador_id)
    ON DELETE SET NULL;
 
ALTER TABLE Realiza ADD CONSTRAINT FK_Realiza_2
    FOREIGN KEY (fk_Duelo_duelo_id)
    REFERENCES Duelo (duelo_id)
    ON DELETE SET NULL;
 
ALTER TABLE Acontece_com ADD CONSTRAINT FK_Acontece_com_1
    FOREIGN KEY (fk_Duelo_duelo_id)
    REFERENCES Duelo (duelo_id)
    ON DELETE SET NULL;
 
ALTER TABLE Acontece_com ADD CONSTRAINT FK_Acontece_com_2
    FOREIGN KEY (fk_Pokemons_em_batalha_id_pokemon_batalha)
    REFERENCES Pokemons_em_batalha (id_pokemon_batalha)
    ON DELETE SET NULL;