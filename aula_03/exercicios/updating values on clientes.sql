select restaurantes_id, count(*) from avaliacoes where nota in (1, 2) group by restaurantes_id order by count(*) desc
--restaurante 9 é o com maior número de avaliações baixas (10 notas 1 ou 2)

select * from avaliacoes where restaurantes_id = 9 and nota = 2;

-- restaurante se revoltou, encontrou uma falha no app e adulterou as notas 1 e 2 para 4 e 5, mas esqueceu de alterar os comentários.
update avaliacoes set nota = 5 where restaurantes_id = 9 and nota = 2;
update avaliacoes set nota = 4 where restaurantes_id = 9 and nota = 1;