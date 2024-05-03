-- NAME YEAR
select 
f.Nome Nome,
f.Ano Ano
from Filmes f

--NAME YEAR ASC
select 
f.Nome Nome,
f.Ano Ano,
f.Duracao
from Filmes f
order by ano asc

-- SPECIFIC MOVIE
select
f.Nome,
f.Ano,
f.Duracao
from Filmes f
where f.Nome = 'De Volta para o Futuro'

-- BY YEAR IS
select
f.Nome,
f.Ano,
f.Duracao
from Filmes f
where f.Ano = 1997

-- BY YEAR 2000
select
f.Nome,
f.Ano,
f.Duracao
from Filmes f
where f.Ano > 2000

-- BY LENGTH ASC
select
f.Nome,
f.Ano,
f.Duracao
from Filmes f
where f.Duracao > 100 and f.Duracao < 150
order by Duracao asc

-- COUNT BY YEAR	
select
f.Ano,
COUNT(f.Ano) Quantidade
from Filmes f
group by Ano
order by Quantidade desc

-- MALE CAST
SELECT 
a.PrimeiroNome,
a.UltimoNome,
a.Genero
from Atores a
where a.Genero = 'M'

-- FEMALE CAST BY FIRST NAME
SELECT 
a.PrimeiroNome,
a.UltimoNome,
a.Genero
from Atores a
where a.Genero = 'F'
order by a.PrimeiroNome

-- MOVIE AND GENRE
select 
f.Nome,
g.Genero
from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id

-- MYSTERY MOVIES
select 
f.Nome,
g.Genero
from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id
where g.Genero = 'Mistério'

-- ALL CAST BY MOVIE
select 
f.Nome,
a.PrimeiroNome,
a.UltimoNome,
ef.Papel
from Filmes f
inner join ElencoFilme ef on f.Id = ef.Id
inner join Atores a on ef.IdAtor = a.Id