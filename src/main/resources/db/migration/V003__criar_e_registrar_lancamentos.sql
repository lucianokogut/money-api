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
    FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo),
    FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Descrição 1', '2023-12-01', '2023-12-10', 100, 'Observação 1', 'DESPESA', 5, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
            VALUES ('Descrição 2', '2023-12-02', '2023-12-11', 100, 'Observação 2', 'DESPESA', 6, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Descrição 3', '2023-12-03', '2023-12-12', 100, 'Observação 3', 'DESPESA', 7, 3);