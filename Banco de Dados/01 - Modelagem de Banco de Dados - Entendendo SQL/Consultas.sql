SET FOREIGN_KEY_CHECKS = 0;

SELECT 
	ID_LIVRO as "Código do Livro",
	NOME_LIVRO as "Nome do Livro",
	PRECO 
FROM 
	LIVRO;

-- ===============================================================================
	
SELECT 
	*
FROM 
	LIVRO
WHERE 
	CATEGORIA = 'Romance' and PRECO < 48;

-- ===============================================================================
	
SELECT 
	*
FROM 
	LIVRO
WHERE 
	CATEGORIA = 'Poesia'
	AND NOT (AUTORIA = "Luís Vaz de Camões" OR AUTORIA = "Gabriel Pedrosa");

-- ===============================================================================
	
SELECT 
    *
FROM 
    LIVRO
WHERE 
    NOME_LIVRO LIKE 'A%'  OR NOME_LIVRO LIKE '%A';

-- ===============================================================================
   
SELECT DISTINCT 
	ID_LIVRO,
	ID_VENDEDOR 
FROM 
	VENDA
WHERE 
	ID_VENDEDOR  = 1
ORDER BY 
	1;
   
-- ===============================================================================

DELETE FROM 
	ESTOQUE 
WHERE 
	ID_LIVRO = 8;

DELETE FROM 
	LIVRO 
WHERE 
	ID_LIVRO = 8;
	
-- ===============================================================================

UPDATE  
	LIVRO 
SET 
	PRECO = 0.9 * PRECO;

-- ===============================================================================

SELECT 
	VENDA.ID_VENDEDOR,
	VENDEDOR.NOME_VENDEDOR,
	SUM(VENDA.QTD_VENDIDA) 
FROM 
	VENDA, VENDEDOR
WHERE 
	VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR
GROUP BY 
	VENDA.ID_VENDEDOR;
	
-- ===============================================================================

SELECT 
	VENDA.ID_VENDEDOR,
	VENDEDOR.NOME_VENDEDOR,
	SUM(VENDA.QTD_VENDIDA) 
FROM 
	VENDA INNER JOIN VENDEDOR
	ON VENDA.ID_VENDEDOR = VENDEDOR.ID_VENDEDOR
GROUP BY 
	VENDA.ID_VENDEDOR;
	
-- ===============================================================================

SELECT 
	LIVRO.NOME_LIVRO,
	VENDA.QTD_VENDIDA 
FROM
	LIVRO LEFT JOIN VENDA
	ON LIVRO.ID_LIVRO = VENDA.ID_LIVRO
WHERE 
	VENDA.QTD_VENDIDA IS NULL ;
	
-- ===============================================================================

SELECT 
	LIVRO.NOME_LIVRO,
	VENDA.QTD_VENDIDA 
FROM
	LIVRO RIGHT JOIN VENDA
	ON LIVRO.ID_LIVRO = VENDA.ID_LIVRO;
	
-- ===============================================================================