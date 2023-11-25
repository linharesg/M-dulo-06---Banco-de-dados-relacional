/*
INSERT INTO reservas (restaurantes_id, clientes_id, data_registro, status_reserva, quant_pessoas, id_mesas, data_reserva)
VALUES
    (10, 20, '2023-12-01 14:30:00', 'Pendente', 3, 5, '2023-12-08'),
    (28, 40, '2023-12-02 17:45:00', 'Confirmada', 2, 25, '2023-12-12'),
    (7, 15, '2023-12-05 19:00:00', 'Cancelada', 6, NULL, '2023-12-18'),
    (18, 30, '2023-12-08 11:15:00', 'Pendente', 4, 12, '2023-12-25'),
    (22, 35, '2023-12-10 08:00:00', 'Confirmada', 5, 18, '2023-12-20'),
    (5, 25, '2023-12-15 10:30:00', 'Pendente', 2, 10, '2023-12-10'),
    (12, 30, '2023-12-18 15:45:00', 'Confirmada', 3, 20, '2023-12-05'),
    (8, 10, '2023-12-20 18:00:00', 'Cancelada', 5, NULL, '2023-12-02'),
    (3, 5, '2023-12-25 12:15:00', 'Pendente', 4, 15, '2023-12-15'),
    (15, 35, '2023-12-28 08:00:00', 'Confirmada', 2, 30, '2023-12-20'),
    (30, 45, '2024-01-05 14:30:00', 'Pendente', 3, 8, '2024-01-15'),
    (11, 22, '2024-01-08 17:45:00', 'Confirmada', 2, 28, '2024-01-12'),
    (9, 14, '2024-01-12 19:00:00', 'Cancelada', 6, NULL, '2024-01-18'),
    (20, 33, '2024-01-15 11:15:00', 'Pendente', 4, 14, '2024-01-25'),
    (25, 37, '2024-01-18 08:00:00', 'Confirmada', 5, 22, '2024-01-20'),
    (14, 28, '2024-02-01 14:30:00', 'Pendente', 3, 7, '2024-02-08'),
    (27, 43, '2024-02-03 17:45:00', 'Confirmada', 2, 32, '2024-02-12'),
    (6, 12, '2024-02-06 19:00:00', 'Cancelada', 6, NULL, '2024-02-18'),
    (19, 31, '2024-02-09 11:15:00', 'Pendente', 4, 13, '2024-02-25'),
    (23, 36, '2024-02-11 08:00:00', 'Confirmada', 5, 19, '2024-02-20'),
    (4, 24, '2024-02-16 10:30:00', 'Pendente', 2, 11, '2024-02-10'),
    (13, 29, '2024-02-19 15:45:00', 'Confirmada', 3, 21, '2024-02-05'),
    (10, 9, '2024-02-21 18:00:00', 'Cancelada', 5, NULL, '2024-02-02'),
    (2, 6, '2024-02-26 12:15:00', 'Pendente', 4, 16, '2024-02-15'),
    (16, 32, '2024-02-29 08:00:00', 'Confirmada', 2, 31, '2024-02-20'),
    (30, 44, '2024-03-05 14:30:00', 'Pendente', 3, 9, '2024-03-15'),
    (11, 23, '2024-03-08 17:45:00', 'Confirmada', 2, 27, '2024-03-12'),
    (9, 13, '2024-03-12 19:00:00', 'Cancelada', 6, NULL, '2024-03-18'),
    (20, 34, '2024-03-15 11:15:00', 'Pendente', 4, 15, '2024-03-25'),
    (25, 38, '2024-03-18 08:00:00', 'Confirmada', 5, 23, '2024-03-20'),
    (14, 27, '2024-03-23 10:30:00', 'Pendente', 2, 12, '2024-03-10'),
    (8, 21, '2024-03-26 15:45:00', 'Confirmada', 3, 22, '2024-03-05'),
    (7, 11, '2024-03-28 18:00:00', 'Cancelada', 5, NULL, '2024-03-02'),
    (3, 7, '2024-03-31 12:15:00', 'Pendente', 4, 18, '2024-03-15'),
    (15, 33, '2024-04-02 08:00:00', 'Confirmada', 2, 29, '2024-03-20'),
    (17, 29, '2024-04-05 14:30:00', 'Pendente', 3, 6, '2024-04-08'),
    (26, 42, '2024-04-07 17:45:00', 'Confirmada', 2, 33, '2024-04-12'),
    (5, 11, '2024-04-09 19:00:00', 'Cancelada', 6, NULL, '2024-04-18'),
    (21, 30, '2024-04-12 11:15:00', 'Pendente', 4, 14, '2024-04-25'),
    (24, 35, '2024-04-14 08:00:00', 'Confirmada', 5, 20, '2024-04-20'),
    (9, 23, '2024-04-19 10:30:00', 'Pendente', 2, 9, '2024-04-10'),
    (15, 26, '2024-04-22 15:45:00', 'Confirmada', 3, 19, '2024-04-05'),
    (11, 8, '2024-04-24 18:00:00', 'Cancelada', 5, NULL, '2024-04-02'),
    (4, 5, '2024-04-29 12:15:00', 'Pendente', 4, 17, '2024-04-15'),
    (19, 31, '2024-05-02 08:00:00', 'Confirmada', 2, 30, '2024-04-20'),
    (30, 43, '2024-05-07 14:30:00', 'Pendente', 3, 8, '2024-05-15'),
    (12, 24, '2024-05-10 17:45:00', 'Confirmada', 2, 26, '2024-05-12'),
    (8, 14, '2024-05-12 19:00:00', 'Cancelada', 6, NULL, '2024-05-18'),
    (20, 32, '2024-05-15 11:15:00', 'Pendente', 4, 13, '2024-05-25'),
    (25, 37, '2024-05-18 08:00:00', 'Confirmada', 5, 22, '2024-05-20'),
    (13, 28, '2024-05-23 10:30:00', 'Pendente', 2, 10, '2024-05-10'),
    (7, 22, '2024-05-26 15:45:00', 'Confirmada', 3, 23, '2024-05-05'),
    (6, 10, '2024-05-28 18:00:00', 'Cancelada', 5, NULL, '2024-05-02'),
    (3, 6, '2024-05-31 12:15:00', 'Pendente', 4, 16, '2024-05-15'),
    (16, 33, '2024-06-02 08:00:00', 'Confirmada', 2, 31, '2024-05-20');
*/

-- Verificando se na geração aleatória de reservas tinha alguma reserva de alguma mesa que não existe em um resrautante

/*select
*
from
reservas
inner join mesas on (reservas.id_mesas = mesas.id and reservas.restaurantes_id = mesas.id_restaurantes)

-- nenhum registro consistente de reserva (nenhuma mesa válida em restaurante)

-- removendo dados inputados inconsistentes (todos)
truncate reservas RESTART IDENTITY CASCADE

select * from reservas
*/
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('21', '20', '2023-12-18 14:30:00', 'Pendente', '3', '387', '2023-12-08') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('23', '40', '2023-12-19 14:30:00', 'Confirmada', '2', '443', '2023-12-09') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('23', '15', '2023-12-20 14:30:00', 'Cancelada', '6', '444', '2023-12-10') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('5', '30', '2023-12-21 14:30:00', 'Pendente', '4', '717', '2023-12-11') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('26', '35', '2023-12-22 14:30:00', 'Confirmada', '5', '526', '2023-12-12') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('5', '25', '2023-12-23 14:30:00', 'Pendente', '2', null, '2023-12-13') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('24', '30', '2023-12-24 14:30:00', 'Confirmada', '3', '477', '2023-12-14') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('28', '10', '2023-12-25 14:30:00', 'Cancelada', '5', '592', '2023-12-15') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('17', '5', '2023-12-26 14:30:00', 'Pendente', '4', null, '2023-12-16') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('25', '35', '2023-12-27 14:30:00', 'Confirmada', '2', null, '2023-12-17') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('10', '45', '2023-12-28 14:30:00', 'Pendente', '3', '54', '2023-12-18') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('29', '22', '2023-12-29 14:30:00', 'Confirmada', '2', '606', '2023-12-19') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('8', '14', '2023-12-30 14:30:00', 'Cancelada', '6', '794', '2023-12-20') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('17', '33', '2023-12-31 14:30:00', 'Pendente', '4', '244', '2023-12-21') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('30', '37', '2024-01-01 14:30:00', 'Confirmada', '5', '656', '2023-12-22') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('20', '28', '2024-01-02 14:30:00', 'Pendente', '3', '340', '2023-12-23') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('30', '43', '2024-01-03 14:30:00', 'Confirmada', '2', '650', '2023-12-24') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('2', '12', '2024-01-04 14:30:00', 'Cancelada', '6', null, '2023-12-25') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('26', '31', '2024-01-05 14:30:00', 'Pendente', '4', '530', '2023-12-26') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('12', '36', '2024-01-06 14:30:00', 'Confirmada', '5', '105', '2023-12-27') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('9', '24', '2024-01-07 14:30:00', 'Pendente', '2', null, '2023-12-28') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('18', '29', '2024-01-08 14:30:00', 'Confirmada', '3', '273', '2023-12-29') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('26', '9', '2024-01-09 14:30:00', 'Cancelada', '5', '524', '2023-12-30') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('6', '6', '2024-01-10 14:30:00', 'Pendente', '4', '748', '2023-12-31') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('25', '32', '2024-01-11 14:30:00', 'Confirmada', '2', null, '2024-01-01') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('30', '44', '2024-01-12 14:30:00', 'Pendente', '3', '648', '2024-01-02') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('11', '23', '2024-01-13 14:30:00', 'Confirmada', '2', '70', '2024-01-03') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('13', '13', '2024-01-14 14:30:00', 'Cancelada', '6', '129', '2024-01-04') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('21', '34', '2024-01-15 14:30:00', 'Pendente', '4', '372', '2024-01-05') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('15', '38', '2024-01-16 14:30:00', 'Confirmada', '5', '194', '2024-01-06') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('23', '27', '2024-01-17 14:30:00', 'Pendente', '2', '426', '2024-01-07') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('25', '21', '2024-01-18 14:30:00', 'Confirmada', '3', null, '2024-01-08') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('5', '11', '2024-01-19 14:30:00', 'Cancelada', '5', null, '2024-01-09') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('24', '7', '2024-01-20 14:30:00', 'Pendente', '4', '487', '2024-01-10') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('4', '33', '2024-01-21 14:30:00', 'Confirmada', '2', '677', '2024-01-11') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('7', '29', '2024-01-22 14:30:00', 'Pendente', '3', null, '2024-01-12') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('6', '42', '2024-01-23 14:30:00', 'Confirmada', '2', '747', '2024-01-13') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('9', '11', '2024-01-24 14:30:00', 'Cancelada', '6', null, '2024-01-14') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('22', '30', '2023-12-29 14:30:00', 'Pendente', '4', '396', '2024-01-15') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('23', '35', '2023-12-30 14:30:00', 'Confirmada', '5', '435', '2024-01-16') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('4', '23', '2023-12-31 14:30:00', 'Pendente', '2', '680', '2024-01-17') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('17', '26', '2024-01-01 14:30:00', 'Confirmada', '3', '257', '2024-01-18') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('2', '8', '2024-01-02 14:30:00', 'Cancelada', '5', '310', '2024-01-19') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('9', '5', '2024-01-03 14:30:00', 'Pendente', '4', null, '2024-01-20') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('22', '31', '2024-01-04 14:30:00', 'Confirmada', '2', '418', '2024-01-21') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('26', '43', '2024-01-05 14:30:00', 'Pendente', '3', null, '2024-01-22') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('28', '24', '2024-01-06 14:30:00', 'Confirmada', '2', '580', '2024-01-23') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('15', '14', '2024-01-07 14:30:00', 'Cancelada', '6', null, '2024-01-24') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('20', '32', '2024-01-08 14:30:00', 'Pendente', '4', '336', '2024-01-25') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('24', '37', '2024-01-09 14:30:00', 'Confirmada', '5', '465', '2024-01-26') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('29', '28', '2024-01-10 14:30:00', 'Pendente', '2', null, '2024-01-27') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('17', '22', '2024-01-21 14:30:00', 'Confirmada', '3', null, '2024-01-28') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('23', '10', '2024-01-22 14:30:00', 'Cancelada', '5', '438', '2024-01-29') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('17', '6', '2024-01-23 14:30:00', 'Pendente', '4', null, '2024-01-30') ON CONFLICT DO NOTHING;
insert into reservas (restaurantes_id,clientes_id,data_registro,status_reserva,quant_pessoas,id_mesas,data_reserva) values ('11', '33', '2024-01-24 14:30:00', 'Confirmada', '2', null, '2024-01-31') ON CONFLICT DO NOTHING;

	