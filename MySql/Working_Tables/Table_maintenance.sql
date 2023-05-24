-- Select all data from person table.
SELECT * FROM pessoa

-- Update name with id one.
UPDATE pessoa SET nome='Jose Messias' WHERE id=1

-- Delete data from a table.
DELETE FROM pessoa WHERE id=1

-- Sort in ascending order.
SELECT * FROM pessoa ORDER BY nome

-- Grouping information.
SELECT COUNT()

-- Addindig columm in table.
ALTER TABLE pessoa ADD genero VARCHAR(1) NOT NULL AFTER nascimento;

-- Returns a count of items by group.
SELECT COUNT(id), genero FROM pessoa GROUP BY genero;

