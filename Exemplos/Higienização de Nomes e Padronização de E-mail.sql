SELECT 
    cliente_id,
    UPPER(TRIM(nome)) AS nome_padronizado,
    LOWER(email) AS email_limpo
FROM clientes;