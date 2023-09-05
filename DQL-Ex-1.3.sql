---DQL EX 1.3

USE Exercicio_1_3;

SELECT * FROM Pet;

SELECT * FROM Dono;

SELECT * FROM Raca;

SELECT * FROM TipoPet;

SELECT * FROM Clinica;

SELECT * FROM Veterinario;

SELECT * FROM Atendimento;

-- listar todos os veterinários de uma clínica
SELECT Veterinario.Nome,Clinica.Endereco FROM Veterinario
INNER JOIN Clinica
ON Veterinario.IdClinica = Clinica.IdClinica
WHERE Clinica.IdClinica = 1;

-- listar todas as raças que começam com a letra S
SELECT Raca.Descricao FROM Raca
WHERE Descricao LIKE 'S%'

-- listar todos os tipos de pet que terminam com a letra O
SELECT TipoPet.Descricao FROM TipoPet
WHERE Descricao LIKE'%O'

-- listar todos os pets mostrando os nomes dos seus donos
SELECT Dono.Nome, Pet.Nome, Raca.Descricao FROM Dono
INNER JOIN Pet
ON Dono.IdDono = Pet.IdDono
INNER JOIN Raca
ON Raca.IdRaca = Pet.IdRaca;

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT Atendimento.Descricao, Veterinario.Nome, Pet.Nome, Raca.Descricao, TipoPet.Descricao, Dono.Nome, Clinica.Endereco FROM Atendimento
INNER JOIN Pet
ON Pet.IdPet = Atendimento.IdPet
INNER JOIN Raca
ON Raca.IdRaca = Pet.IdRaca
INNER JOIN Veterinario
ON Veterinario.IdVeterinario = Atendimento.IdVeterinario
INNER JOIN TipoPet
ON TipoPet.Descricao = Raca.Descricao
INNER JOIN Dono
ON Dono.IdDono = Pet.IdDono
INNER JOIN Clinica
ON Clinica.IdClinica = Veterinario.IdClinica;
