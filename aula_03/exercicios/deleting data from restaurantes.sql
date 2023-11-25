select count(*) from restaurantes;
-- 30 restaurantes cadastrados

-- objetivo: banir o restaurante 9 por má conduta e suspeita de alteração das avaliações
-- excluir o restaurante e verificar as tabelas com FK de restaurante se os dados foram excluídos juntos (cascade)


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
--313 registros
select * from avaliacoes where restaurantes_id = '9';
-- total de 17 registros de mesa no restaurante 9.
-- ao excluir o restaurante 9, o cascade fará com que sobre 296 registros


select count(*) from telefones;
-- 1000 registros
select * from telefones where restaurantes_id = '9';
-- total de 11 telefones registrados para este restaurante
-- ao excluir o restaurante, sobrará 989

select count(*) from enderecos;
-- 114 registros
select * from enderecos where restaurantes_id = '9';
-- um unico registro de endereço para o restaurante ( id 39)


--delete from restaurantes where id = 9;
select * from restaurantes
