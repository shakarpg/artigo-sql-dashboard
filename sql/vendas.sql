-- Criação da tabela de vendas
CREATE TABLE Vendas (
    ID INT PRIMARY KEY,
    Data DATE NOT NULL,
    Produto VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL,
    Valor DECIMAL(10,2) NOT NULL
);

-- Inserindo dados fictícios
INSERT INTO Vendas (ID, Data, Produto, Quantidade, Valor) VALUES
(1, '2024-07-01', 'Notebook', 2, 4500.00),
(2, '2024-07-02', 'Mouse', 10, 250.00),
(3, '2024-07-02', 'Teclado', 5, 600.00),
(4, '2024-07-03', 'Monitor', 3, 1500.00),
(5, '2024-07-04', 'Cadeira Gamer', 1, 1200.00),
(6, '2024-07-05', 'Headset', 4, 800.00);

-- Criando índice para melhorar consultas
CREATE INDEX idx_data_produto ON Vendas(Data, Produto);

-- Consulta de exemplo
SELECT Produto, SUM(Valor) AS Receita_Total
FROM Vendas
GROUP BY Produto
ORDER BY Receita_Total DESC;
