CREATE TABLE lancamento (
    codigo              BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    descricao           VARCHAR(60) NOT NULL,
    data_vencimento     DATE NOT NULL,
    data_pagamento      DATE NOT NULL,
    valor               DECIMAL(10,2) NOT NULL,
    observacao          VARCHAR(100),
    tipo                VARCHAR(20) NOT NULL,
    codigo_categoria    BIGINT(20) NOT NULL,
    codigo_pessoa       BIGINT(20) NOT NULL,
    FOREING KEY (codigo_categoria) REFERENCES categoria(codigo),
    FOREING KEY (codigo_pessoa) REFERENCES pessoa(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;