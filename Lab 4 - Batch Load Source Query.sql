SELECT b.name schema_name, a.name table_name
FROM sys.tables a
INNER JOIN sys.schemas b ON a.schema_id = b.schema_id
WHERE a.name IN ('OrderLines', 'Orders', 'People', 'StockItems')
AND a.name NOT LIKE '%Archive'