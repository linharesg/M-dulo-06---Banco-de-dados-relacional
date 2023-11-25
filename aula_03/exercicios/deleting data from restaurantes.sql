select count(*) from restaurantes;
-- 30 restaurantes cadastrados

-- objetivo: excluir o restaurante 9 e verificar as tabelas com FK de restaurante se os dados foram excluídos juntos (cascade)



select * from reservas order by restaurantes_id;
-- 55 reservas cadastradas
-- existem 3 reservas (ids 12, 13 e 14) no restaurante de id 9.


select count(*) from mesas;
--851 registros
select * from mesas where id_restaurantes = '9';
-- total de 31 registros de mesa no restaurante 9.
-- ao excluir o restaurante 9, o cascade fará com que sobre 820 registros


select * from restaurantes_funcionarios;
-- 666 registros
select restaurantes_id, count(*) from restaurantes_funcionarios group by restaurantes_id order by restaurantes_id;
-- 29 funcionarios registrados no restaurante 9.
-- ao excluir o restuarante 9, sobrará 637 registros

select count(*) from avaliacoes;
--76 registros
select * from avaliacoes where restaurantes_id = '9';
-- total de 3 registros de mesa no restaurante 9.
-- ao excluir o restaurante 9, o cascade fará com que sobre 73 registros

delete from restaurantes where id = 9;
select * from restaurantes


select * from avaliacoes order by restaurantes_id, nota


--nesse ponto eu ganhei justa causa porque selecionei a linha 32 sem a parte do where achando que era um select. 4 tabelas com FK em cascade
-- inserindo dados novamente pelos inserts salvos
truncate restaurantes restart identity cascade
