-- 1
SELECT
	Nome,
	Ano
FROM Filmes

-- 2
SELECT * FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT 
    Nome,
    Ano,
    Duracao
FROM  Filmes
WHERE Nome = 'De Volta Para o Futuro';

-- 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano >= 2000

-- 6
SELECT
    Nome,
    Ano,
    Duracao
FROM 
    Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT
	Id,
    PrimeiroNome,
    UltimoNome,
	Genero
FROM 
    Atores
WHERE 
    Genero = 'M';

-- 9

SELECT
	Id,
    PrimeiroNome,
    UltimoNome,
	Genero
FROM 
    Atores
WHERE 
    Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10

SELECT
    filmes.Nome AS Nome,
    generos.Genero
FROM 
    filmes
JOIN 
    generos ON filmes.Id = generos.ID;

-- 11

SELECT
    filmes.Nome AS Nome,
    generos.Genero
FROM 
    filmes
JOIN 
    generos ON filmes.Id = generos.Id
WHERE 
    generos.Genero = 'Mistério';

-- 12

SELECT
    f.Nome AS Nome_do_Filme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
JOIN 
    Atores a ON ef.IdAtor = a.Id;


-- Projeto feito por Victor Vinicius
-- https://github.com/Foqsz
-- https://github.com/Foqsz/trilha-net-banco-de-dados-desafio
