-- Curso: MySQL (Curso em Vídeo) | Profº Gustavo Guanabara
-- By: Marcos Carvalho | Data: 11/09/2023

-- Verificar tabela inteira --
select * from gafanhotos;

-- EXERCÍCIOS --

-- 1) Uma lista com o nome de todas as gafanhotas --
select nome from gafanhotos where sexo = 'F' order by nome;

-- 2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015 --
select * from gafanhotos  where nascimento between '2000-01-01' and '2015-12-31' order by nascimento;

-- 3) Uma lista com o nome de todos os homens que trabalham como Programadores --
select nome from gafanhotos where profissao = 'Programador' AND sexo = 'M' order by nome;

-- 4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J --
select * from gafanhotos where nome like 'J%' and nacionalidade = 'Brasil' order by nome;

-- 5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg --
select nome, nacionalidade from gafanhotos where nome like '_%Silva%' and nacionalidade != 'Brasil' and peso < '100' order by nome;

-- 6) Qual é a maior altura entre gafanhotos homens que moram no Brasil? --
select nome, max(altura), nacionalidade from gafanhotos where nacionalidade = 'Brasil' and sexo = 'M' order by nome;

-- 7) Qual é a média de peso dos gafanhotos cadastrados? --
select avg(peso) from gafanhotos;

-- 8) Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000? --
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9) Quantas gafanhotos mulheres têm mais de 1.90m de altura? --
select count(*) from gafanhotos where altura > '1.90' and sexo = 'F';