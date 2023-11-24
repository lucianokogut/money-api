CREATE TABLE pessoa (
    codigo      BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(100) NOT NULL,
    logradouro  VARCHAR(60),
    numero      VARCHAR(8),
    complemento VARCHAR(20),
    bairro      VARCHAR(60),
    cep         VARCHAR(9),
    unidade     VARCHAR(60),
    localidade  VARCHAR(60),
    uf          VARCHAR(2),
    ddd         INT(2),
    ibge        INT(7),
    siafi       VARCHAR(7),
    gia         VARCHAR(7),
    ativo       BOOLEAN NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ddd, ibge, siafi, gia, ativo) 
            VALUES ('Aderbal da LetraA', 'Rua da Casa 3', '456', 'Casa dos Fundos', 'Jacaré', '58105-810', NULL, 'Cabedelo', 'PB', NULL, NULL, NULL, '', 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ddd, ibge, siafi, gia, ativo)
            VALUES ('Aderxis da Letra B', 'Rua B (Cj Nova Residência)', '789', 'Apto. 1011 Bloco B', 'Bom Jardim', '', '', 'Fortaleza', 'CE', NULL, NULL, '', NULL, 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ddd, ibge, siafi, gia, ativo)
            VALUES ('Luizer Augustos', 'Rua da Consolação', '2333', 'Sl. 1234', 'Consolação', '01301-908', 'Secretaria da Fazenda', 'São Paulo', 'SP', 11, 3550308, '7107', '1004', 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ddd, ibge, siafi, gia, ativo) 
            VALUES ('Brismaldo Césares', 'Alameda Campinas', '199', '', 'Parque Trianon', '19910-475', 'Residencial Cinco', 'Ourinhos', 'SP', NULL, NULL, NULL, NULL, 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ativo) 
            VALUES ('Crosteovaldo Manquetola', 'Travessa Tamoio Fedumenti', '321', '', '', '', '', '', 'MS', 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ativo) 
            VALUES ('Drimiciniano do Anos Fichadus', '', '', '', '', '', '','Guararapes', 'PE', 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, unidade, localidade, uf, ativo) 
            VALUES ('Ermenegilciano do Abertixlidade Avial', '', '', '', '', '26153-230', '', 'Belford Roxo', 'RJ', 1);
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep) 
            VALUES ('Frederegildo Antonio Fradega', '', '', '', '', '69087-665');
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep) 
            VALUES ('Gustialovik Arnaldo Garciano', '', '', '', '', '78025-327');