CREATE DATABASE IF NOT EXISTS e_commerce;
USE e_commerce;

CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL
);

CREATE TABLE assinaturas (
    assinatura_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    plano VARCHAR(50) NOT NULL,
    data_inicio DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    data_pedido DATETIME NOT NULL,
    codigo_rastreio VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Inserção de Dados Populados
INSERT INTO clientes (nome, email, cpf) VALUES
('  joao silva  ', 'JOAO.SILVA@EMAIL.COM', '12345678901'),
('Maria Santos', 'maria.santos@email.com', '98765432100'),
('carlos EDUARDO', 'carlos.eduardo@email.com', '45678912300');

INSERT INTO assinaturas (cliente_id, plano, data_inicio, status) VALUES
(1, 'Premium Mensal', '2026-01-15', 'Ativa'),
(2, 'Anual VIP', '2025-06-01', 'Ativa'),
(3, 'Básico', '2026-08-10', 'Cancelada');

INSERT INTO pedidos (cliente_id, valor_total, data_pedido, codigo_rastreio) VALUES
(1, 150.50, '2026-09-01 10:30:00', 'BR-98765-XYZ'),
(2, 299.90, '2026-09-10 14:45:00', 'BR-12345-ABC'),
(1, 89.00, '2026-09-15 09:15:00', NULL);