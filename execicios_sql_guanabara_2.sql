-- Curso: MySQL (Curso em Vídeo) | Profº Gustavo Guanabara
-- By: Marcos Carvalho | Data: 12/09/2023

-- Verificar tabela inteira --
select * from gafanhotos;

-- EXERCÍCIOS --

-- 1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos --
select profissao, count(profissao) from gafanhotos group by profissao order by count(profissao) desc;

-- 2) Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005? --
select sexo, count(sexo) from gafanhotos where nascimento > '2005/01/01' group by sexo;

-- 3) Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade --
select nacionalidade, count(nacionalidade) from gafanhotos group by nacionalidade having nacionalidade != 'Brasil' and count(nacionalidade) > 3;

-- 4) Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100Kg e que estão acima da média de altura de todos os cadastrados --
select altura, count(altura) from gafanhotos where peso > '100' group by altura having altura > (select avg(altura) from gafanhotos);