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
            VALUES ('Salário mensal', '2023-12-05', '2023-12-05', 6720, 'Salário líquido', 'RECEITA', 1, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
            VALUES ('Trabalho de Pintura', '2023-12-10', '2023-12-10', 1500, 'Serviço de pintura na casa do vizinho', 'RECEITA', 2, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Aluguel da Quadra de Futebol', '2023-12-05', '2023-12-10', 100, 'Divisão do valor mensal do aluguel da quadra', 'DESPESA', 1, 3);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Aluguel da Quadra de Futebol', '2023-12-05', '2023-12-10', 100, 'Divisão do valor mensal do aluguel da quadra', 'DESPESA', 2, 3);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Alimentação do Refeitório', '2023-12-10', '2023-12-15', 125, 'Valor dos Tickets cobrados pelo refeitório', 'DESPESA', 1, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Alimentação do Refeitório', '2023-12-10', '2023-12-15', 125, 'Valor dos Tickets cobrados pelo refeitório', 'DESPESA', 2, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Alimentação do Refeitório', '2023-12-10', '2023-12-15', 125, 'Valor dos Tickets cobrados pelo refeitório', 'DESPESA', 3, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Alimentação do Refeitório', '2023-12-10', '2023-12-15', 125, 'Valor dos Tickets cobrados pelo refeitório', 'DESPESA', 4, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Alimentação do Refeitório', '2023-12-10', '2023-12-15', 125, 'Valor dos Tickets cobrados pelo refeitório', 'DESPESA', 5, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Valor dos Vales Transportes', '2023-12-15', '2023-12-15', 150, 'Valor dos VTs do mês de Novembro/2023', 'DESPESA', 7, 5);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) 
            VALUES ('Valor da Luz', '2023-12-03', '2023-12-15', 150, 'Valor da Luz relativo ao mês de Novembro/2023', 'DESPESA', 6, 9);