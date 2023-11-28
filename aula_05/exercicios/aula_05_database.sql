--1) Realize as seguintes consultas na tabela books:

--a) Selecione o título e o autor de todos os livros.
SELECT title "Título", author "Autor" from books;

--b) Selecione os livros escritos por Henry Davis.
SELECT title "Livros" from books where author = 'Henry Davis';

-- c) Selecione o título, autor e ano dos livros publicados antes de 1900.
SELECT title "Livros", author "Autor", release_year "Ano de publicação"
from books where release_year < 1900;

--d) Selecione todos os livros cujo título comece com a letra "O".
SELECT title "Livros" from books where title ILIKE 'O%';

-- e) Selecione o título e o autor dos livros cujo ano seja posterior a 1950.
SELECT title "Livros", author "Autor" from books where release_year > 1950;

--f) Selecione o número total de livros na tabela.
SELECT COUNT(*) FROM books;

--g) Selecione o autor com o maior número de livros publicados.
SELECT author "Autor", COUNT(*) "Livros publicados" FROM books GROUP BY author order by COUNT(*) DESC LIMIT 1;

--h) Selecione os livros ordenados por ano em ordem ascendente.
SELECT title "Livros", release_year "Ano de publicação" from books ORDER BY release_year;

--i) Selecione o título do livro mais antigo.
SELECT title "Livros", release_year "Ano de publicação" from books WHERE release_year = (SELECT MIN(release_year) from books);

--j) Selecione o título do livro mais recente.
SELECT title "Livros", release_year "Ano de publicação" from books WHERE release_year = (SELECT MAX(release_year) from books);

--k) Selecione o título e o autor dos três últimos livros na tabela.
SELECT title "Livros", author "Autor" from books ORDER BY id desc LIMIT 3;



--2) Com base na tabela de sales, faça as consultas solicitadas:
SELECT * FROM sales;

--a) Selecione a quantidade total de produtos em estoque.
SELECT SUM(quantity_in_stock) "Total quant. estoque" FROM sales;

--b) Selecione o preço médio dos produtos.
SELECT ROUND(AVG(price::numeric),2)::money "Preço médio" FROM sales;

--c) Selecione o produto mais caro da tabela.
SELECT product "Produto", price "Preço" from sales where price::numeric = (select max(price::numeric) from sales);

--d) Selecione o produto mais barato da tabela.
SELECT product "Produto", price "Preço" from sales where price::numeric = (select min(price::numeric) from sales);

--e) Selecione o valor do total do estoque (preço * estoque) para cada produto.
-- Considerando que Prato e Copo (ids 38 e 39) se repetem e devem ser somados
SELECT product "Produto", sum((price::numeric)*quantity_in_stock)::money from sales group by product order by product;

--f) Selecione a quantidade de produtos que possuem estoque menor que 20.
SELECT COUNT(*) "Produtos com estoque < 20" from sales where quantity_in_stock < 20;

--g) Selecione o produto com o maior retorno após a venda de todas as unidades em estoque.

select product "Produto", sum((price::numeric)*quantity_in_stock)::money "Faturamento total"
from sales group by product order by 2 desc LIMIT 1;



--3) 
SELECT * FROM employees;
SELECT * FROM projects;
SELECT * FROM departments;

--a) Selecione o nome e cargo de cada funcionário, juntamente com o departamento em que trabalham.
SELECT e.name "Funcionário", e.role "Cargo", d.name "Departamento"
from employees e
LEFT JOIN departments d on (e.department_id = d.id);


--b) Selecione o nome, o cargo e o salário dos funcionários do departamento de vendas.
SELECT DISTINCT e.name "Funcionário", e.role "Cargo", e.salary "Salário" --distinct pois existem dois id's para Vendas
from employees e
INNER JOIN departments d on (e.department_id = d.id)
WHERE d.name = 'Vendas';


--c) Selecione o nome, o cargo e o salário dos funcionários cujo salário
--   seja maior que 3500 e que trabalham no departamento de vendas.
SELECT DISTINCT e.name "Funcionário", e.role "Cargo", e.salary "Salário" --distinct pois existem dois id's para Vendas
from employees e
INNER JOIN departments d on (e.department_id = d.id)
WHERE d.name = 'Vendas' and e.salary::numeric > 3500; -- ninguém de vendas ganha mais que $3.500


--d) Selecione o nome, o cargo, o salário e o nome do projeto associado a cada funcionário.
SELECT e.name "Funcionário", e.role "Cargo", e.salary "Salário", p.name "Projeto"
from employees e
INNER JOIN departments d on (e.department_id = d.id)
LEFT JOIN projects p on (e.department_id = p.id) order by 1; -- alguns cargos estão com IDs repetidas
	--d) RESOLUÇÃO DO PROFESSOR
	select
		e.name nome,
		e.role cargo,
		e.salary salario,
		STRING_AGG(p.name, ', ') projetos
	from
		employees e
		inner join departments d on (e.department_id = d.id)
		inner join projects p on (p.department_id = d.id)
	GROUP BY e.id, 1;
	
	
	

--e) Liste o total gasto pela empresa no pagamento dos funcionários.
SELECT SUM(salary::numeric)::money "Salário total" from employees;

--f) Liste o total de salário pago para os funcionários de cada departamento.
SELECT d.name "Departamento", sum(e.salary::numeric)::money "Salário por departamento"
from employees e
INNER JOIN departments d on (e.department_id = d.id)
GROUP BY d.name; -- agrupamento feito pelo nome pois existem IDs repetidos

--g) Liste o maior salário de cada departamento.
SELECT d.name "Departamento", max(e.salary::numeric)::money "Salário por departamento"
from employees e
INNER JOIN departments d on (e.department_id = d.id)
GROUP BY d.name; 

--4.
SELECT * FROM foods;
SELECT * FROM categories;
SELECT * FROM nutritional_information;
SELECT * FROM diets;
SELECT * FROM diets_foods;
--a) Listar todos os alimentos e as suas respectivas categorias.
SELECT f.name "Alimento", c.name "Categoria"
FROM foods f INNER JOIN categories c on (c.id = f.category_id);

--b) Encontre o total de calorias para cada categoria de alimento.
SELECT c.name "Categoria", sum(n.calories) "Calorias por categoria"
FROM categories c
	INNER JOIN foods f on (c.id = f.category_id)
	INNER JOIN nutritional_information n on (n.food_id =f.id)
GROUP BY c.name order by 2 desc;

--c) Listar as dietas que incluem alimentos com mais de 500 calorias.

select
diets.name "Dietas"
from diets_foods df
inner join diets on (diets.id = df.diet_id)
where
	df.food_id in (
		SELECT
			food_id
		from
			foods
			inner join nutritional_information nf on (foods.id = nf.food_id)
		where calories > 500);

--d) Calcular a média de proteínas por categoria de alimento.
SELECT
	c.name "Categoria",
	ROUND(avg(ni.proteins), 2) "Média de proteínas"
FROM
	categories c
	INNER JOIN foods on (foods.category_id = c.id)
	INNER JOIN nutritional_information ni on (ni.food_id = foods.id)
GROUP BY c.name ORDER BY 2 DESC;

--e) Identificar os alimentos que têm um teor de gordura superior à média de gordura de todos os alimentos.
SELECT
f.name "Alimento",
ni.fats "Gorduras (somente >média)"
from foods f
inner join nutritional_information ni on (f.id = ni.food_id)
where ni.fats > (SELECT AVG(ni.fats) FROM nutritional_information ni inner join foods f on (f.id = ni.food_id));

--f) Listar as três categorias de alimentos com o maior número de itens.
select
c.name "Categoria",
COUNT(*) "Total de itens"
FROM
	categories c
	INNER JOIN foods f on (f.category_id = c.id)
GROUP BY c.name order by 2 desc limit 3;

--g) Encontrar a dieta que tem o menor teor total de carboidratos.
select
	--diet_id,
	diets.name "Dieta"
	,sum(carbohydrates) "Carboidratos"
FROM
	diets_foods df
	inner join foods on (df.food_id = foods.id)
	inner join nutritional_information ni on (ni.food_id = foods.id)
	inner join diets on (diets.id = df.diet_id)
GROUP BY diet_id, diets.name order by  "Carboidratos" limit 1


--h) Listar todos os alimentos que não estão incluídos em nenhuma dieta.
SELECT
f.name "Alimento"
from foods f
left join diets_foods df on (df.food_id = f.id)
where df.food_id is null -- todos os alimentos se encontram em ao menos uma lista

--i) Determinar a proporção de proteínas, carboidratos e gorduras (em percentagem) de cada alimento.
SELECT
f.name "Alimento",
round(ni.proteins/(ni.proteins + ni.carbohydrates + ni.fats),2) "% Proteína",
round(ni.carbohydrates/(ni.proteins + ni.carbohydrates + ni.fats),2) "% Carboidratos",
round(ni.fats/(ni.proteins + ni.carbohydrates + ni.fats),2) "% Gordura"
from foods f
inner join nutritional_information ni on (f.id = ni.food_id)





