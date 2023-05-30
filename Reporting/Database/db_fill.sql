-- DATA FILL

INSERT INTO waste_types (name)
VALUES	('industrial'),
		('medical'),
		('electronic'),
		('construction');

SELECT * FROM waste_types

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

SELECT * FROM wastes

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

SELECT * FROM waste_operations

INSERT INTO industries (name)
VALUES	('chemical'),
		('medical'),
		('electronical'),
		('construction');

SELECT * FROM industries

INSERT INTO corporations(name)
VALUES	('That industrial Company'),
		('Pfizer Inc.'),
		('Sony'),
		('Turner Construction');

SELECT * FROM corporations

INSERT INTO countries (name, initials)
VALUES	('Costa Rica', 'CRC'),
		('Estados Unidos', 'USA'),
		('Brasil', 'BRA'),
		('Mexico', 'MEX');

SELECT * FROM countries

INSERT INTO countries (name, initials)
VALUES	('Costa Rica', 'CRC'),
		('Estados Unidos', 'USA'),
		('Brasil', 'BRA'),
		('Mexico', 'MEX');

SELECT * FROM [state/provinces]

INSERT INTO countries (name, initials)
VALUES	('Costa Rica', 'CRC'),
		('Estados Unidos', 'USA'),
		('Brasil', 'BRA'),
		('Mexico', 'MEX');

SELECT * FROM cities

INSERT INTO countries (name, initials)
VALUES	('Costa Rica', 'CRC'),
		('Estados Unidos', 'USA'),
		('Brasil', 'BRA'),
		('Mexico', 'MEX');

SELECT * FROM districts

-- 4 or 5 

SELECT * FROM addresses

-- same as addresses

SELECT * FROM producers

-- same as producers

SELECT * FROM contracts

-- more than contracts

SELECT * FROM contract_terms

SELECT * FROM collection_cycles

SELECT * FROM collection_cycles_reports

SELECT * FROM collection_routes