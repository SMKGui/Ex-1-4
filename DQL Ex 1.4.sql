-- DQL EX 1.4

USE Exercicio_1_4;

SELECT * FROM Artistas;

SELECT * FROM Estilos;

SELECT * FROM Albuns;

SELECT * FROM AlbunsEstilos;

SELECT * FROM Usuarios;

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT Artistas.Nome, Albuns.Titulo, Estilos.Nome, Albuns.DataLancamento, Albuns.Localizacao, Albuns.QtdMinutos,Albuns.Ativo FROM Albuns
INNER JOIN Estilos
ON Albuns.IdArtista = Estilos.IdEstilo
INNER JOIN Artistas
ON Albuns.IdArtista = Artistas.IdArtista
WHERE Albuns.DataLancamento > '1993-06-20';

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum
SELECT Artistas.Nome AS Artista,Albuns.Titulo,Estilos.Nome AS Estilo FROM Albuns
INNER JOIN Estilos
ON Albuns.IdArtista = Estilos.IdEstilo
INNER JOIN Artistas
ON Albuns.IdArtista = Artistas.IdArtista;