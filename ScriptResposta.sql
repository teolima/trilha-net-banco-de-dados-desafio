--1 - Buscar o nome e ano dos filmes

SELECT  Nome, Ano FROM Filmes

--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT  * FROM Filmes
ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano ,Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes
WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes
WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'F' 

----10 - Buscar o nome do filme e o gênero

SELECT F.Nome AS Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero C ON F.Id = C.IdFilme
INNER JOIN Generos G ON C.IdGenero = G.Id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT F.Nome AS Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero C ON F.Id = C.IdFilme
INNER JOIN Generos G ON C.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel


SELECT F.Nome AS Nome, A.PrimeiroNome, A.UltimoNome, Ef.Papel
FROM Filmes F
INNER JOIN ElencoFilme Ef ON F.Id = Ef.IdFilme
JOIN Atores a ON Ef.IdAtor = A.Id
