-- 1
SELECT 
	Nome, Ano
FROM Filmes

-- 2
SELECT 
	Nome, Ano 
FROM Filmes  
ORDER BY Ano

-- 3
SELECT 
	* 
FROM Filmes 
WHERE Nome = 'de volta para o futuro'

-- 4 
SELECT 
	*
FROM Filmes 
WHERE Ano = '1997'

-- 5
SELECT 
	*
FROM Filmes 
WHERE Ano > '2000'

-- 6
SELECT 
	*
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
	F.Nome, 
	G.Genero 
FROM ((FilmesGenero
INNER JOIN Filmes F ON  F.Id= FilmesGenero.IdFilme)
INNER JOIN Generos G ON G.Id =FilmesGenero.IdGenero)

-- 11
SELECT 
	F.Nome, 
	G.Genero 
FROM ((FilmesGenero
INNER JOIN Filmes F ON  F.Id= FilmesGenero.IdFilme)
INNER JOIN Generos G ON G.Id =FilmesGenero.IdGenero)
WHERE Genero = 'mistério'

-- 12
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	ElencoFilme.Papel
FROM ((ElencoFilme
INNER JOIN Filmes F ON  F.Id= ElencoFilme.IdFilme)
INNER JOIN Atores A ON A.Id = ElencoFilme.IdAtor);