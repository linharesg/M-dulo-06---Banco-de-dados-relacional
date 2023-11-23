
CREATE TABLE IF NOT EXISTS public.clientes
(
    id SERIAL PRIMARY KEY,
    data_registro TIMESTAMP NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(256) NOT NULL,
    nome VARCHAR(256) NOT NULL,
    data_nascimento DATE,
	usuario varchar(30) NOT NULL UNIQUE,
	senha varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.enderecos
(
    id SERIAL PRIMARY KEY,
    logradouro VARCHAR(256) NOT NULL,
    cidade VARCHAR(256) NOT NULL,
    bairro VARCHAR(256) NOT NULL,
    estado character(256) NOT NULL,
    clientes_id INT NOT NULL UNIQUE,
    restaurantes_id INT NOT NULL UNIQUE,
    funcionarios_id INT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS public.restaurantes
(
    id SERIAL PRIMARY KEY,
    data_registro TIMESTAMP NOT NULL,
    tipo_cozinha VARCHAR(256) NOT NULL
);

ALTER TABLE public.restaurantes ADD COLUMN nome VARCHAR(256) NOT NULL;

CREATE TABLE IF NOT EXISTS public.telefones
(
    id SERIAL PRIMARY KEY,
    telefone VARCHAR(25) NOT NULL,
    clientes_id INT NOT NULL,
    restaurantes_id INT NOT NULL,
    funcionarios_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS public.avaliacoes
(
    id SERIAL PRIMARY KEY,
    clientes_id INT NOT NULL,
    restaurantes_id INT NOT NULL,
    nota SMALLINT NOT NULL,
    comentario text,
    data_visita DATE,
    data_registro TIMESTAMP NOT NULL,
    reservas_id INT,
    mesas_id INT
);

CREATE TABLE IF NOT EXISTS public.mesas
(
    id SERIAL PRIMARY KEY,
    id_restaurantes INT NOT NULL,
    numero_mesa SMALLINT NOT NULL,
    localizacao VARCHAR(256),
    capacidade SMALLINT NOT NULL,
    UNIQUE (id_restaurantes, numero_mesa)
);


CREATE TYPE type_status_reserva as ENUM ('Pendente', 'Confirmada', 'Cancelada');
CREATE TABLE IF NOT EXISTS public.reservas
(
    id SERIAL PRIMARY KEY,
    restaurantes_id INT NOT NULL,
    clientes_id INT NOT NULL,
    data_registro TIMESTAMP NOT NULL,
    status_reserva type_status_reserva NOT NULL,
    quant_pessoas SMALLINT NOT NULL,
    id_mesas INT,
    data_reserva DATE NOT NULL

);

CREATE TABLE IF NOT EXISTS public.funcionarios
(
    id SERIAL PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    nome VARCHAR(256) NOT NULL
);

ALTER TABLE funcionarios ADD COLUMN data_registro timestamp NOT NULL;
SELECT * FROM funcionarios
CREATE TABLE IF NOT EXISTS public.restaurantes_funcionarios
(
    id SERIAL PRIMARY KEY,
    restaurantes_id INT NOT NULL,
    funcionarios_id INT NOT NULL,
    turno VARCHAR(256) NOT NULL,
    id_funcoes INT NOT NULL,
    UNIQUE (funcionarios_id, restaurantes_id)
);

CREATE TABLE IF NOT EXISTS public.funcoes
(
    id SERIAL PRIMARY KEY,
    funcao VARCHAR(256)
);

ALTER TABLE funcoes ALTER COLUMN funcao SET NOT NULL;
ALTER TABLE IF EXISTS public.funcoes
    ADD UNIQUE (funcao);

ALTER TABLE IF EXISTS public.enderecos
    ADD FOREIGN KEY (clientes_id)
    REFERENCES public.clientes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.enderecos
    ADD FOREIGN KEY (restaurantes_id)
    REFERENCES public.restaurantes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.enderecos
    ADD FOREIGN KEY (funcionarios_id)
    REFERENCES public.funcionarios (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.telefones
    ADD FOREIGN KEY (clientes_id)
    REFERENCES public.clientes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.telefones
    ADD FOREIGN KEY (restaurantes_id)
    REFERENCES public.restaurantes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.telefones
    ADD FOREIGN KEY (funcionarios_id)
    REFERENCES public.funcionarios (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.avaliacoes
    ADD FOREIGN KEY (clientes_id)
    REFERENCES public.clientes (id)
    ON UPDATE CASCADE
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.avaliacoes
    ADD FOREIGN KEY (restaurantes_id)
    REFERENCES public.restaurantes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.avaliacoes
    ADD FOREIGN KEY (reservas_id)
    REFERENCES public.reservas (id)
    ON UPDATE CASCADE
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.avaliacoes
    ADD FOREIGN KEY (mesas_id)
    REFERENCES public.mesas (id)
    ON UPDATE CASCADE
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.mesas
    ADD FOREIGN KEY (id_restaurantes)
    REFERENCES public.restaurantes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.reservas
    ADD FOREIGN KEY (clientes_id)
    REFERENCES public.clientes (id) 
    ON UPDATE CASCADE
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.reservas
    ADD FOREIGN KEY (id_mesas)
    REFERENCES public.mesas (id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT;


ALTER TABLE IF EXISTS public.reservas
    ADD FOREIGN KEY (restaurantes_id)
    REFERENCES public.restaurantes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.restaurantes_funcionarios
    ADD FOREIGN KEY (funcionarios_id)
    REFERENCES public.funcionarios (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.restaurantes_funcionarios
    ADD FOREIGN KEY (id_funcoes)
    REFERENCES public.funcoes (id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT;

ALTER TABLE IF EXISTS public.restaurantes_funcionarios
    ADD FOREIGN KEY (restaurantes_id)
    REFERENCES public.restaurantes (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;
