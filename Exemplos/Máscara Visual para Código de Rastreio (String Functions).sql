SELECT 
    pedido_id,
    COALESCE(REPLACE(codigo_rastreio, '-', '/'), 'SEM RASTREIO') AS codigo_formatado
FROM pedidos;