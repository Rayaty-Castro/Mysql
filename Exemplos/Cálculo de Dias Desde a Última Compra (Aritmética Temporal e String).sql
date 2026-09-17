SELECT 
    CONCAT('Cliente ID: ', cliente_id) AS identificador,
    DATEDIFF('2026-09-17', data_pedido) AS dias_decorridos
FROM pedidos;