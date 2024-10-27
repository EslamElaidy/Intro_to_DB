SELECT 
(
COLUMN_NAME,
COLUMN_TYPE,
TABLE_SCHEMA = 'alx_book_store', TABLE_NAME = Books
  )
FROM 
    information_schema.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store'
    AND TABLE_NAME = 'books';
