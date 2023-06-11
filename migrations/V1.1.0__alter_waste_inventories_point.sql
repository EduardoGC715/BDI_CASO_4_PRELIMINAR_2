USE [Esencial V];

-- Step 2: Drop the column contract_id
ALTER TABLE wastes_inventories
DROP COLUMN contract_id;

-- Step 2: Add the column contract_term_id
ALTER TABLE wastes_inventories
ADD contract_term_id INT; -- Assuming the data type of contract_term_id is INT, change it accordingly if it's different

-- Step 3: Add the foreign key constraint
ALTER TABLE wastes_inventories
ADD CONSTRAINT fk_contract_term
FOREIGN KEY (contract_term_id) REFERENCES contract_terms (contract_term_id);


ALTER TABLE collection_routes ADD  name VARCHAR(100);