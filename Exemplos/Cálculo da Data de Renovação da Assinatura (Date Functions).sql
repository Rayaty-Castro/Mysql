SELECT 
    assinatura_id,
    data_inicio,
    DATE_ADD(data_inicio, INTERVAL 1 MONTH) AS proxima_renovacao
FROM assinaturas
WHERE status = 'Ativa';