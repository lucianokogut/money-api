CREATE TABLE categoria (
    codigo      BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO categoria (nome) VALUES ('Salários');
INSERT INTO categoria (nome) VALUES ('Trabalho Extra');
INSERT INTO categoria (nome) VALUES ('Lazer');
INSERT INTO categoria (nome) VALUES ('Alimentação');
INSERT INTO categoria (nome) VALUES ('Supermercado');
INSERT INTO categoria (nome) VALUES ('Farmácia');
INSERT INTO categoria (nome) VALUES ('Mobilidade');
INSERT INTO categoria (nome) VALUES ('Doação');
INSERT INTO categoria (nome) VALUES ('Outros');