-- DATA FILL
USE [Esencial V];

-- waste_types fill --
INSERT INTO waste_types (name)
VALUES	('industrial'),
		('medical'),
		('electronic'),
		('construction');

SELECT * FROM waste_types;


-- wastes fill --
INSERT INTO wastes (waste_type_id, name)
VALUES	(1, 'solvent'),
		(1, 'acid'),
		(1, 'scrap'),
		(1, 'metal'),
		(1, 'oil'),

		(2, 'syringe'),
		(2, 'needle'),
		(2, 'scalpel'),
		(2, 'gauze'),
		(2, 'bandage'),

		(3, 'battery'),
		(3, 'keyboard'),
		(3, 'mouse'),
		(3, 'monitor'),
		(3, 'phone'),

		(4, 'cement'),
		(4, 'nails'),
		(4, 'ceramic'),
		(4, 'brick'),
		(4, 'pvc');

SELECT * FROM wastes;

-- waste_operations fill --
INSERT INTO waste_operations (name, waste_id, waste_capacity, base_cost, duration)
VALUES	('solvent filtering', 1, 100000.00, 25000.00, 4.00),
		('acid filtering', 2, 100000.00, 30000.00, 4.50),
		('scrap smelting', 3, 100000.00, 50000.00, 6.00),
		('metal smelting', 4, 100000.00, 100000.00, 10.00),
		('oil filtering', 5, 100000.00, 10000.00, 2.00),

		('syringe recycle', 6, 100000.00, 500.00, 3.00),
		('needle cleanning', 7, 100000.00, 100.00, 2.00),
		('scalpel cleaning', 8, 100000.00, 100.00, 2.00),
		('gauze washer', 9, 100000.00, 400.00, 3.50),
		('bandage washer', 10, 100000.00, 300.00, 2.50),

		('battery fusion', 11, 100000.00, 3000.00, 1.00),
		('keyboard beating', 12, 100000.00, 4000.00, 1.00),
		('mouse cager', 13, 100000.00, 2000.00, 0.50),
		('monitor breaker', 14, 100000.00, 10000.00, 3.00),
		('phone remover', 15, 100000.00, 2500.00, 2.00),

		('cement mixer', 16, 100000.00, 150000.00, 1.50),
		('nail smelting', 17, 100000.00, 300000.00, 2.50),
		('ceramic breaker', 18, 100000.00, 400000.00, 4.50),
		('brick breaker', 19, 100000.00, 150000.00, 3.50),
		('pvc smelting', 20, 100000.00, 75000.00, 0.50);

SELECT * FROM waste_operations;

-- industries fill --
INSERT INTO industries (name)
VALUES	('chemical'),
		('medical'),
		('electronical'),
		('construction');

SELECT * FROM industries;

-- corporations fill --
INSERT INTO corporations(name)
VALUES	('Kentuchy Fried Chicken'),
		('Pozuleo.'),
		('Hilton Cariari'),
		('El Rey'),
		('Super'),
		('El Rey'),
		('I.C.T.'),
		('AMPM'),
		('Pipasa');

SELECT * FROM corporations;


-- Insertar regiones --
INSERT INTO regions (name)
VALUES ('Latinoamérica'),
('Centroamérica'),
('América del Norte'),
('Europa'),
('Asia');

SELECT * FROM regions;

-- Insertar países --
INSERT INTO countries (name, initials, region_id)
VALUES	('Costa Rica', 'CRC', 2),
		('Estados Unidos', 'USA', 3),
		('Brasil', 'BRA', 1),
		('Mexico', 'MEX', 3);


SELECT * FROM countries;

-- Inserting state/provinces --
INSERT INTO [state/provinces] (name, initial, area_code, country_id, region_id)
VALUES ('San José', 'SJ', '506', 1, 1),
('Guanacaste', 'GU', '506', 1, 2),
('Limón', 'LI', '506', 1, 3),
('Puntarenas', 'PU', '506', 1, 4),
('Alajuela', 'AL', '506', 1, 1);


SELECT * FROM [state/provinces];

-- Inserting cities --
INSERT INTO cities (name, [state/province_id], region_id)
VALUES ('San José', 1, 1),
('Liberia', 2, 2),
('Puerto Limón', 3, 3),
('Quepos', 4, 4),
('Alajuela', 5, 1);

SELECT * FROM cities;

-- Inserting districts --
INSERT INTO districts (name, city_id, region_id)
VALUES ('Escazú', 1, 1),
('Tilarán', 2, 2),
('Cariari', 3, 3),
('Manuel Antonio', 4, 4),
('San Ramón', 5, 1);

SELECT * FROM districts;

-- addresses fill --
INSERT INTO addresses (location, zip_code, district_id)
VALUES (geography::Point(9.932573, -84.076568, 4326), '10101', 1),
	(geography::Point(10.635791, -85.437183, 4326), '50309', 2),
	(geography::Point(9.989739, -83.041291, 4326), '70101', 3),
	(geography::Point(9.402140, -84.165866, 4326), '60601', 4),
	(geography::Point(10.022788, -84.215433, 4326), '20109', 5);

SELECT * FROM addresses;

-- ev_sites fill --
INSERT INTO ev_sites (name, address_id)
VALUES ('Sede Escazú', 1),
	('Sede Tilarán', 2),
	('Sede Cariari', 3),
	('Sede Manuel Antonio', 4),
	('Sede San Ramón', 5);

SELECT * FROM ev_sites;

-- alt_collectors fill --
INSERT INTO alt_collectors (name, address_id)
VALUES ('Corporacion de Transportes S&R', 1),
	   ('Samuels', 2),
	   ('Camiones Don Julio', 3),
	   ('Transportistas S.A.', 4),
	   ('Contenedores Rodriguez', 5);
	
SELECT * FROM alt_collectors;


-- ev_collectors fill --
INSERT INTO ev_collectors (name, ev_site_id)
VALUES ('Ev Collectors Esc', 1),
	   ('Ev Collectors Til', 2),
	   ('Ev Collectors San R', 5);

SELECT * FROM ev_collectors;




-- producers fill --
INSERT INTO producers (name, env_score, industry_id, corporation_id, address_id, computer, username, checksum, created_at, updated_at)
VALUES ('kfc Escazú', 70, 1,1, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	    ('Fresh market Escazu Centro', 29, 1, 2, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('pozuelo', 84, 1,3, 2, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('Super mercado Tilaran', 18, 1,2, 2, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('Pipasa Tilaran', 18, 1,4, 2, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),

		('DoubleTree by Hilton Cariari', 57, 1,5, 3, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('Centro de Convenciones de C.R.', 51 ,1 ,6, 3, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('Igloo Beach Hotel', 42, 1,7, 4, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('El Rey San Ramon', 52, 1,8, 5, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
		('Trululu San Ramon', 36, 1,9, 5, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE());

INSERT INTO corporations(name)
VALUES	('Kentuchy Fried Chicken'),
		('AMPM'),
		('Pozuleo.'),
		('Pipasa'),
		('Hilton Cariari'),
		('I.C.T.'),
		('Igloo'),
		('El Rey'),
		('Super');		
		

SELECT * FROM producers;


INSERT INTO container_types (capacity, material, brand, model, waste_id)
VALUES (8.00, 'Plastic', 'Containers Inc', 'container 101', 1),             --solvent--
	   (25.00, 'Metal', 'CAT', '5', 5),										--oil--
	   (10.00, 'Metal', 'CAT', '200', 4),									--metal--
	   (8.00, 'Plastic', 'Containers Inc', 'container 102', 11),			--battery--
	   (20.00, 'Plastic', 'CAT', '101', 14),								--monitor--
	   (15.00, 'Iron', 'Containers Inc', 'container 103', 16),				--cement--
	   (15.00, 'Plastic', 'Containers Inc', 'container 104', 13);			--mouse--

SELECT * FROM container_types;

-- containers_inventories fill for an ev_site --
INSERT INTO containers_inventories (container_type_id, ev_site_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
VALUES (2, 1, 10, 1, 1,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (3, 1, 8, 2, 2,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (1, 2, 14, 4, 2,  0, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (4, 2, 10, 0, 3,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (7, 2, 11, 1, 0,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),

	   (2, 3, 8, 2, 2,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (6, 3, 12, 4, 6,  0, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (4, 4, 11, 2, 2,  2, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (5, 5, 10, 0, 3,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (1, 5, 13, 1, 1,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE());

SELECT * FROM containers_inventories;

-- container_inventories fill for a producer --
INSERT INTO containers_inventories (container_type_id, producer_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
VALUES (2, 1, 10, 1, 1,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (1, 2, 14, 4, 2,  0, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (4, 3, 11, 2, 2,  2, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (4, 4, 10, 0, 3,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (7, 5, 11, 1, 0,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),

	   (5, 6, 10, 0, 3,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (1, 7, 13, 1, 1,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (3, 8, 8, 2, 2,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (2, 9, 8, 2, 2,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (6, 10, 12, 4, 6,  0, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE());
	   
	   

SELECT * FROM containers_inventories;

-- container_inventories fill for an alt_collector --
INSERT INTO containers_inventories (container_type_id, alt_collector_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
VALUES (2, 1, 13, 2, 2, 0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()), 
		(4, 2, 11, 2, 4, 2, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()), 
		(7, 2, 3, 4, 0, 1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()), 
		(5, 3, 17, 0, 3, 3, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()), 
		(1, 3, 16, 1, 2, 4, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()), 
		(3, 4, 3, 2, 2, 1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()), 
		(6, 5, 15, 4, 6, 2, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE());

SELECT * FROM containers_inventories;




-- container_inventories fill for ev collector (trabajan sobre producers con id: 2,4 y 9)-- 
INSERT INTO containers_inventories (container_type_id, ev_collector_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
VALUES 
	   (1, 1, 16, 4, 2,  0, 1, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (4, 2, 10, 4, 3,  0, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE()),
	   (2, 3, 18, 5, 2,  1, 0, 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'), GETDATE(), GETDATE());

SELECT * FROM containers_inventories;


-- score_prices fill -- 
INSERT INTO score_prices(price_per_score,  created_at, updated_at, computer, username, checksum)
VALUES (20,  GETDATE(), GETDATE(),'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (12,  GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'));



-- contracts fill -- 
INSERT INTO contracts(contract_id, corporation_id, total_cost, contract_score, total_score_debt, initial_date, final_date)
VALUES (1,1,25000000,100,80,GETDATE(), GETDATE()),
	   (2,2,26400005,100,80,GETDATE(), GETDATE()),
	   (3,3,23304200,100,80,GETDATE(), GETDATE()),
	   (4,4,23304200,100,80,GETDATE(), GETDATE()),
	   (5,5,23304200,100,80,GETDATE(), GETDATE()),

	   (6,6,23304200,100,80,GETDATE(), GETDATE()),
	   (7,7,2534560,100,80,GETDATE(), GETDATE()),
	   (8,8,23304200,100,80,GETDATE(), GETDATE()),
	   (9,9,2452200,100,80, GETDATE(), GETDATE()),
	   (10,9,2245300, 100,80,GETDATE(), GETDATE());

SELECT * FROM contracts;


-- more than contracts --

-- collection_routes fill -- 
INSERT INTO collection_routes(total_distance, name)
VALUES (45.50, 'Escazu 1'),                                           --Escazú--
		(20.00, 'Tilarán 1'),										  --Tilarán--
		(20.5,'Cariari '),											  --Cariari--
		(40.5,'Manuel Antonio'),									  --Manuel Antonio--
		(30.5,'San Ramón 1'),										  --San Ramón--
		(20.5,'Escazu ev'),  										  --Escazú ev--
		(10.5, 'Tilarán ev'),										  --Tilarán ev--
		(15.5, 'San Ramón ev');										  --San Ramón ev--				  
	
SELECT * FROM collection_routes;

-- collection_points fill -- 
INSERT INTO collection_points(name, collection_route_id, producer_id, ev_site_id, description)
VALUES ('kfc Escazu', 1,1,1,'frente a kfc Escazu'),
	   ('Fresh market Escazu', 6,2,1, 'Estacionamiento Fresh market Escazu Centro'),
	   ('pozuelo Tilaran',2,3,2, 'zona de carga, entrada trasera'),
	   ('Super mercado Til',7,4,2, 'Frente al establecimiento'),
	   ('Pipasa Tilaran',2,5,2, 'Zona de carga'),

	   ('DoubleTree Cariari',3,6,3, 'Entrada principal, doblando a la derecha'),
	   ('Centro de Conv C.R.',3,7,3, 'Frente al palo de mango'),
	   ('Igloo Beach Hotel',4,8,4, 'En la playa'),
	   ('El Rey San Ramon',8,9,5, 'Zona de carga, puerta azul'),
	   ('Trululu San Ramon',5,10,5, 'Zona de carga, puerta roja');

SELECT * FROM collection_points;


-- collection_cycles fill -- 
INSERT INTO collection_cycles(monthly, weekly, daily, other_schedule, day, time, collection_route_id, start_date, final_date)
VALUES (0,1,0,0,'monday','17:45:00.0000000', 1,GETDATE(), GETDATE()),
	   (0,1,0,0,'friday','21:45:00.0000000', 2,GETDATE(), GETDATE()),
	   (0,0,1,0,'all','05:00:00.0000000', 3,GETDATE(), GETDATE()),
	   (1,0,0,0,'sunday','18:00:00.0000000', 4,GETDATE(), GETDATE()),
	   (0,1,0,0,'monday','20:30:00.0000000', 5,GETDATE(), GETDATE()),
	   (0,1,0,0,'wednesday','16:45:00.0000000', 6,GETDATE(), GETDATE()),
	   (0,1,0,0,'friday','17:45:00.0000000', 7,GETDATE(), GETDATE()),
	   (0,1,0,0,'saturday','04:55:00.0000000', 8,GETDATE(), GETDATE());


SELECT * FROM collection_cycles;


-- more than contracts --
INSERT INTO contract_terms(contract_id, producer_id, collection_cycle_id, waste_operation_id, waste_quantity, alt_collector_id, ev_collector_id, ev_site_id, container_inventory_id, 
		collection_cost, subtotal_score,score_price_id, subtotal_cost, producer_profit_percentage, alt_collector_due_amount, [non-compliance_fee],
		alt_collector_profit_percentage,created_at, updated_at, computer, username, checksum)
VALUES (1,1,1,5,60, 1,NULL,1, 1, 100000, 25, 1, 90000, 0.1000, 250000, 120000,  0.1000, GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),  
	   (2,2,6,1,125,NULL,1,1, 2, 250000, 48, 2, 220000,0.1000,NULL,280000,NULL,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (3,3,2,11,160,2,NULL,2,3, 110000, 32, 1, 100000, 0.1000, 250000, 130000, 0.1000,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),  
	   (4,4,7,11,100,NULL,2,2,4,260000,45,1,240000,0.1000,NULL, 290000, NULL, GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (5,5,2,13,167,2,NULL, 2,5,100000,32,2,90000,0.1000, 250000, 120000, 0.1000,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (6,6,3,14,99,3,NULL,3,6,300000,45,1,280000,0.1000,250000, 335000, 0.1000,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (7,7,3,1,100,3,NULL,3,7,105000,50,2,96000,0.1000,250000, 101000, 0.1000,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (8,8,4,4,123,4,NULL,4,8,250000,37,1,220000,0.1000,250000, 280000, 0.1000,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (9,9,8,5,134,NULL,3,5,9,115000,54,2,98000,0.1000,NULL,111000,NULL,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo')),
	   (10,10,5,16,160,5,NULL,5,10,170000,27,1,150000,0.1000, 250000, 185000, 0.1000,GETDATE(), GETDATE(), 'me', 'root', HASHBYTES('SHA2_256', 'hola mundo'));
	
SELECT * FROM contract_terms;


-- languages fill --
INSERT INTO languages(name)
VALUES ('Espanol');

SELECT * FROM languages;

-- languages fill --
INSERT INTO control_words (control_word_id)
VALUES (1);

SELECT * FROM control_words;


-- traductions fill --
INSERT INTO traductions (control_word_id, language_id, traduction, [default])
VALUES (1, 1, 'Transporte de desechos', 1);

SELECT * FROM traductions;

-- movement_types fill --
INSERT INTO movement_types(control_word_id)
VALUES (1);

SELECT * FROM movement_types;

-- wastes_inventories fill --
INSERT INTO wastes_inventories (waste_id, quantity, ev_site_id, contract_term_id, movement_type_id)
VALUES (5, 500, 1, 1, 1),
	   (1,200, 1 ,2, 1),
	   (1,35, 1 ,2, 1),
	   (11,1500, 2 ,3, 1 ),
	   (11,245,2,4,1),
	   (11,120,2,4,1),
	   (13,242,2,5, 1),
	   (14,3567,3,6,1),
	   (1,35,3,7,1),
	   (4,753,4,8,1),
	   (5,84,5,9,1),
	   (5,145,5,9,1),
	   (16,469,5,10,1);

SELECT * FROM wastes_inventories;




SELECT evs.name AS recolection_site,
    cit.name AS city,
    SUM(wi.quantity) AS total_ammount_collected,
    dist.name AS collection_site_district,
    addr.zip_code AS zip_code
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN addresses addr ON addr.address_id = evs.address_id
	JOIN districts dist ON dist.district_id = addr.district_id
	JOIN cities cit ON cit.city_id = dist.city_id
GROUP BY evs.name, cit.name, dist.name, addr.zip_code
ORDER BY evs.name, cit.name, total_ammount_collected, dist.name, addr.zip_code;



SELECT evs.name AS recolection_site,
	   cr.name AS route_name,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN collection_cycles cc ON cc.collection_cycle_id = ct.collection_cycle_id
	JOIN collection_routes cr ON cr.collections_route_id = cc.collection_route_id
GROUP BY evs.name, cr.name
ORDER BY evs.name, cr.name, total_ammount_collected;



SELECT evs.name AS recolection_site,
	   prod.name AS producer,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN producers prod ON prod.producer_id = ct.producer_id
GROUP BY evs.name, prod.name
ORDER BY evs.name, prod.name, total_ammount_collected;


SELECT evs.name AS recolection_site,
	   ac.name AS alternative_collector,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN alt_collectors ac ON ac.alt_collector_id = ct.alt_collector_id
GROUP BY evs.name, ac.name
ORDER BY evs.name, ac.name, total_ammount_collected;


SELECT evs.name AS recolection_site,
	   evc.name AS esencial_verde_collector,
       SUM(wi.quantity) AS total_ammount_collected      
FROM wastes_inventories wi 
	JOIN ev_sites evs ON evs.ev_site_id = wi.ev_site_id
	JOIN contract_terms ct On ct.contract_term_id = wi.contract_term_id
	JOIN ev_collectors evc ON evc.ev_collector_id = ct.ev_collector_id
GROUP BY evs.name, evc.name
ORDER BY evs.name, evc.name, total_ammount_collected;
