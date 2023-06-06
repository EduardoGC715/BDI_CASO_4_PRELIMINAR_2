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

INSERT INTO [state/provinces] (name, initial, area_code, country_id)
VALUES	('Cartago', 'CAR', 5050, 1),
		('Texas', 'TXS', 4678, 2),
		('Brasilia', 'BRA', 3789, 3),
		('Jalisco', 'JAL', 7890, 4);

SELECT * FROM [state/provinces]

INSERT INTO cities (name, [state/province_id])
VALUES	('Tres Rios', 1),
		('Dallas', 2),
		('Boa Vista', 3),
		('Guadalajara', 4);

SELECT * FROM cities

INSERT INTO districts (name, city_id)
VALUES	('La Unión', 1),
		('Fair park', 2),
		('Roraima', 3),
		('Tonala', 4);

SELECT * FROM districts

INSERT INTO addresses (location, zip_code, district_id)
VALUES	(geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656 )', 4326), 1234, 1),
		(geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656 )', 4326), 6434, 2),
		(geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656 )', 4326), 1275, 3),
		(geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656 )', 4326), 5438, 4);

SELECT * FROM addresses

INSERT INTO producers (name, env_score, industry_id, corporation_id, address_id, computer, username, checksum, created_at, updated_at)
VALUES	('TIC CR', 12, 1, 1, 1, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		('Pfizer Dallas', 34, 2, 2, 2, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		('Sony Brasilia', 54, 3, 3, 3, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		('Turner Mexico', 79, 4, 4, 4, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE());
		 
SELECT * FROM producers

INSERT INTO contracts (contract_id, corporation_id, total_cost, contract_score, total_score_debt, initial_date, final_date)
VALUES	(1, 1, 120000.00, 12, 12, GETDATE(), GETDATE()),
		(2, 2, 340000.00, 34, 34, GETDATE(), GETDATE()),
		(3, 3, 400000.00, 40, 54, GETDATE(), GETDATE()),
		(4, 4, 400000.00, 40, 79, GETDATE(), GETDATE());

SELECT * FROM contracts

INSERT INTO collection_routes (total_distance)
VALUES	(123),
		(456),
		(789),
		(124);

SELECT * FROM collection_routes

INSERT INTO collection_cycles (collection_cycle_id, monthly, weekly, daily, other_schedule, day, time, collection_route_id, start_date, final_date)
VALUES	(1, 1, 0, 0, 0,'Monday', '13:45:28.347', 1, GETDATE(), GETDATE()),
		(2, 1, 0, 0, 0,'Monday', '13:45:28.347', 2, GETDATE(), GETDATE()),
		(3, 1, 0, 0, 0,'Monday', '13:45:28.347', 3, GETDATE(), GETDATE()),
		(4, 1, 0, 0, 0,'Monday', '13:45:28.347', 4, GETDATE(), GETDATE());

-- SET IDENTITY_INSERT collection_cycles ON;
-- SET IDENTITY_INSERT collection_cycles OFF;

SELECT * FROM collection_cycles

INSERT INTO ev_sites (name,  address_id)
VALUES ('Global Site', 1);

SELECT * FROM ev_sites

INSERT INTO container_types (capacity, material, brand, model, waste_id)
VALUES	(100, 'dark matter', 'spaceX', 'vac34', 1),
		(100, 'dark matter', 'spaceX', 'vac34', 2),
		(100, 'dark matter', 'spaceX', 'vac34', 3),
		(100, 'dark matter', 'spaceX', 'vac34', 4),
		(100, 'dark matter', 'spaceX', 'vac34', 5),

		(100, 'dark matter', 'spaceX', 'vac34', 6),
		(100, 'dark matter', 'spaceX', 'vac34', 7),
		(100, 'dark matter', 'spaceX', 'vac34', 8),
		(100, 'dark matter', 'spaceX', 'vac34', 9),
		(100, 'dark matter', 'spaceX', 'vac34', 10),

		(100, 'dark matter', 'spaceX', 'vac34', 11),
		(100, 'dark matter', 'spaceX', 'vac34', 12),
		(100, 'dark matter', 'spaceX', 'vac34', 13),
		(100, 'dark matter', 'spaceX', 'vac34', 14),
		(100, 'dark matter', 'spaceX', 'vac34', 15),

		(100, 'dark matter', 'spaceX', 'vac34', 16),	
		(100, 'dark matter', 'spaceX', 'vac34', 17),
		(100, 'dark matter', 'spaceX', 'vac34', 18),
		(100, 'dark matter', 'spaceX', 'vac34', 19),
		(100, 'dark matter', 'spaceX', 'vac34', 20);

SELECT * FROM container_types

INSERT INTO containers_inventories (container_inventory_id, container_type_id, producer_id, in_use, on_maintenance, available, discarded, lost_quantity, computer, username, checksum, created_at, updated_at)
VALUES	(1, 1, 1, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(2, 2, 1, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(3, 3, 1, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(4, 4, 1, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(5, 5, 1, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),

		(6, 6, 2, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(7, 7, 2, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(8, 8, 2, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(9, 9, 2, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(10, 10, 2, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),

		(11, 11, 3, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(12, 12, 3, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(13, 13, 3, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(14, 14, 3, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(15, 15, 3, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),

		(16, 16, 4, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(17, 17, 4, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(18, 18, 4, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(19, 19, 4, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(20, 20, 4, 100, 0, 0, 0, 0, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE());

-- SET IDENTITY_INSERT containers_inventories ON;
-- SET IDENTITY_INSERT containers_inventories OFF;

SELECT * FROM containers_inventories

INSERT INTO contract_terms (contract_id, producer_id, collection_cycle_id, waste_operation_id, waste_quantity, ev_site_id, container_inventory_id, collection_cost, subtotal_score, subtotal_cost, producer_profit_percentage, [non-compliance_fee], computer, username, checksum, created_at, updated_at)
VALUES	(1, 1, 1, 1, 10000.00, 1, 1, 134000.00, 10, 98441.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(1, 1, 1, 2, 10000.00, 1, 2, 129640.00, 10, 915295.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(1, 1, 1, 3, 10000.00, 1, 3, 1588800.00, 10, 165561.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(1, 1, 1, 4, 10000.00, 1, 4, 13690.00, 10, 9849848.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(1, 1, 1, 5, 10000.00, 1, 5, 77000.00, 10, 996371.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),

		(2, 2, 2, 6, 10000.00, 1, 6, 6855900.00, 10, 968461.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(2, 2, 2, 7, 10000.00, 1, 7, 259650.00, 10, 21541.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(2, 2, 2, 8, 10000.00, 1, 8, 25910.00, 10, 239571.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(2, 2, 2, 9, 10000.00, 1, 9, 1025914.00, 10, 23955.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(2, 2, 2, 10, 10000.00, 1, 10, 1395180.00, 10, 23958.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),

		(3, 3, 3, 11, 10000.00, 1, 11, 15940.00, 10, 52373.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(3, 3, 3, 12, 10000.00, 1, 12, 528000.00, 10, 239579.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(3, 3, 3, 13, 10000.00, 1, 13, 9060.00, 10, 123579.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(3, 3, 3, 14, 10000.00, 1, 14, 159400.00, 10, 2038491.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(3, 3, 3, 15, 10000.00, 1, 15, 6846.00, 10, 4383.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),

		(4, 4, 4, 16, 10000.00, 1, 16, 98400.00, 10, 9516.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(4, 4, 4, 17, 10000.00, 1, 17, 9824.00, 10, 9849.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(4, 4, 4, 18, 10000.00, 1, 18, 297840.00, 10, 984589.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(4, 4, 4, 19, 10000.00, 1, 19, 19840.00, 10, 234623.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE()),
		(4, 4, 4, 20, 10000.00, 1, 20, 13870.00, 10, 235623.00, 10, 100.00, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE());

SELECT * FROM contract_terms

INSERT INTO control_words
VALUES	(1);

SELECT * FROM control_words

INSERT INTO check_types (control_word_id)
VALUES	(1);

SELECT * FROM check_types

INSERT INTO check_statuses (control_word_id)
VALUES	(1);

SELECT * FROM check_statuses

INSERT INTO users (name, last_name, password, position, enabled, computer, username, checksum, created_at, updated_at)
VALUES	('Walter', 'White', 'bluemeth123', 'cook', 1, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , GETDATE(), GETDATE());

SELECT * FROM users

DECLARE @StartDate AS date;
DECLARE @EndDate AS date;

SELECT @StartDate = '01/01/2018',
       @EndDate   = '12/31/2023';

WITH number_sequence AS (
  SELECT 1 as n
  UNION ALL
  SELECT n+1
  FROM number_sequence
  WHERE n < 1000
)
INSERT INTO collection_cycles_reports (collection_cycle_id, check_type_id, check_status_id, waste_id, collected_amount, description, user_1, computer, username, checksum, created_at, updated_at)
SELECT FLOOR(RAND(CHECKSUM(NEWID())) * 4) + 1, 1, 1, FLOOR(RAND(CHECKSUM(NEWID())) * 20) + 1, FLOOR(RAND(CHECKSUM(NEWID())) * 1000) + 1, 'recolección', 1, 'me', 'root', 0xB2F555D5A8F54A4A9D504DDB684603F2 , DATEADD(DAY, RAND(CHECKSUM(NEWID()))*(1+DATEDIFF(DAY, @StartDate, @EndDate)),@StartDate), GETDATE()
FROM number_sequence
OPTION (MAXRECURSION 32767);

SELECT * FROM collection_cycles_reports

-- DELETE FROM collection_cycles_reports

SELECT ctr.name AS country, id.name AS industry, wt.name AS waste_type, (wo.base_cost * ccr.collected_amount) + ct.collection_cost AS operation_cost, ct.subtotal_cost + (ct.[non-compliance_fee] * ABS(ccr.collected_amount - ct.waste_quantity)) AS payment, (ct.subtotal_cost + (ct.[non-compliance_fee] * ABS(ccr.collected_amount - ct.waste_quantity)) - (wo.base_cost * ccr.collected_amount) + ct.collection_cost) AS profit, ccr.created_at AS date
FROM collection_cycles_reports ccr
JOIN collection_cycles cc ON ccr.collection_cycle_id = cc.collection_cycle_id
JOIN contract_terms ct ON cc.collection_cycle_id = ct.collection_cycle_id
JOIN producers p ON ct.producer_id = p.producer_id
JOIN addresses a ON p.address_id = a.address_id
JOIN districts d ON a.district_id = d.district_id
JOIN cities c ON d.city_id = c.city_id
JOIN [state/provinces] sp ON c.[state/province_id] = sp.[state/province_id]
JOIN countries ctr ON sp.country_id = ctr.country_id
JOIN waste_operations wo ON ct.waste_operation_id = wo.waste_operation_id
JOIN wastes w ON ccr.waste_id = w.waste_id
JOIN waste_types wt ON w.waste_type_id = wt.waste_type_id
JOIN industries id ON p.industry_id = id.industry_id
ORDER BY ctr.name ASC, id.name ASC, w.name ASC, (ct.subtotal_cost - (wo.base_cost * ccr.collected_amount)) DESC;


