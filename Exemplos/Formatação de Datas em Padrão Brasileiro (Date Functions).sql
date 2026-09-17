SELECT 
    pedido_id,
    DATE_FORMAT(data_pedido, '%d/%m/%Y às %H:%i') AS data_formatada_ptbr
FROM pedidos;