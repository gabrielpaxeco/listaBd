CREATE TABLE nomes (
    nome VARCHAR(50)
);

INSERT INTO nomes (nome) 
VALUES('Roberta','Roberto','Maria Clara','João');

SELECT UPPER(nome) AS nome_maiusculo FROM nomes;

SELECT nome, LENGTH(nome) AS tamanho_nome FROM nomes;

SELECT CASE WHEN nome LIKE '%o' THEN CONCAT('Sr. ', nome) ELSE CONCAT('Sra. ', nome) END AS saudacao FROM nomes;

CREATE TABLE produtos (
    produto VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade INT
);

INSERT INTO produtos (produto, preco, quantidade) VALUES('Produto A', 10.99, 5,'Produto B', 15.75, 0,'Produto C', 7.50, 10);

SELECT produto, ROUND(preco, 2) AS preco_arredondado FROM produtos;

SELECT produto, ABS(quantidade) AS quantidade_absoluta FROM produtos;

SELECT AVG(preco) AS media_precos FROM produtos;

CREATE TABLE eventos (
    data_evento DATE
);

INSERT INTO eventos (data_evento) VALUES('2023-01-15','2023-02-20','2023-03-25');

INSERT INTO eventos (data_evento) VALUES (NOW());

SELECT data_evento, DATEDIFF(NOW(), data_evento) AS dias_de_diferenca FROM eventos;
