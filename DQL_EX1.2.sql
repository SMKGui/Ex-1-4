---DQL EX 1.2

SELECT Modelo.Nome,Cliente.Nome,Aluguel.DataInicio,Aluguel.DataFinal FROM Aluguel
INNER JOIN Cliente ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo ON Veiculo.IdVeiculo = Aluguel.IdVeiculo
INNER JOIN Modelo ON Modelo.IdModelo = Veiculo.IdModelo

USE Exercicio_1_2;

SELECT * FROM Cliente;

SELECT * FROM Empresa;

SELECT * FROM Marca;

SELECT * FROM Modelo;

SELECT * FROM Veiculo;

SELECT * FROM Aluguel;

-- Listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT Cliente.Nome, Modelo.Nome, Aluguel.DataInicio, Aluguel.DataFinal FROM Cliente
INNER JOIN Aluguel
ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo
ON Veiculo.IdVeiculo = Aluguel.IdVeiculo
INNER JOIN Modelo
ON Veiculo.IdModelo = Modelo.IdModelo;

-- Listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT Cliente.Nome, Modelo.Nome, Aluguel.DataInicio, Aluguel.DataFinal FROM Cliente
INNER JOIN Aluguel
ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo
ON Veiculo.IdVeiculo = Aluguel.IdVeiculo
INNER JOIN Modelo
ON Veiculo.IdModelo = Modelo.IdModelo
WHERE Cliente.IdCliente = 1;