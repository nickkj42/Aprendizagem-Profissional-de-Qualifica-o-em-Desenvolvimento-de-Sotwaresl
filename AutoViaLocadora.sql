/*01 Criando Banco De Dados - Arquivo*/
create database AutoViaLocadora;
/*Criando Tabelas*/
CREATE TABLE Marcas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE Modelos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  id_marca INT,
  FOREIGN KEY (id_marca) REFERENCES Marcas(id)
);
  CREATE TABLE Veiculos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  placa VARCHAR(10) NOT NULL UNIQUE,
  ano INT NOT NULL,
  cor VARCHAR (20),
  id_modelo INT,
  status ENUM('Disponivel', 'Locado', 'Em Manutenção') DEFAULT 'Disponivel',
  FOREIGN KEY (id_modelo) REFERENCES Modelos(id)
);
  
   CREATE TABLE Clientes (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR (100) NOT NULL,
   cpf VARCHAR(14) NOT NULL UNIQUE,
   telefone VARCHAR(15),
   endereco VARCHAR(255)
);
  CREATE TABLE Contratos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_clientes INT,
  id_veiculos INT,
  data_inicio DATE NOT NULL,
  data_fim DATE,
  valor_total DECIMAL(10, 2),
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
  FOREIGN KEY (id_veiculo) REFERENCES Veiculos(id)
);

CREATE TABLE Pagamentos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_contrato INT,
	data_pagamento DATE NOT NULL,
	valor DECIMAL(10, 2) NOT NULL,
	metodo ENUM('Dinheiro', 'Cartão de Credito', 'Transferencia') NOT NULL,
	FOREIGN KEY (id_contrato) REFERENCES Contratos(id)
);

INSERT INTO Marcas (nome) VALUES
('Chevrolet'),
('Hyundai'),
('Audi'),
('Volkswagen'),
('Mercedes-Benz'),
('Fiat'),
('Renault'),
('Kia'),
('Jeep'),
('Land Rover'),
('Subaru'),
('Peugeot'),
('Chrysler'),
('Lexus'),
('Mazda'),
('Mitsubishi'),
('Suzuki'),
('Porsche'),
('Jaguar'),
('Infinitti'),
('Alfa Romeo'),
('Buick'),
('Cadillac'),
('Lincoln'),
('GMC');

SET FOREIGN_KEY_CHECKS=1;
INSERT INTO veiculos (placa, ano, cor, id_modelo) VALUES 
('ABC12345', '2021', 'Prata', 1),
('XYZ5679', '2022', 'Cinza', 2),
('LMN9102', '2020', 'Preto', 3),
('DEF3456', '2021', 'Branco', 4),
('GHI7890', '2022', 'Vermelho', 5),
('JKL0123', '2019', 'Azul', 6),
('MNO4567', '2021', 'Amarelo', 7),
('PQR8901', '2020', 'Verde', 8),
('STU2345', '2022', 'Marrom', 9),
('VWX6789', '2021', 'Laranja', 10),
('YZA0123', '2019', 'Roxo', 11),
('BCD3456', '2022', 'Bege', 12),
('EFG7890', '2021', 'Dourado', 13),
('HIJ0123', '2020', 'Prata', 14),
('KLM4567', '2022', 'Cinza', 15),
('NOP8901', '2021', 'Branco', 16),
('QRS2345', '2019', 'Preto', 17),
('TUV6789', '2022', 'Vermelho', 18),
('WXY0123', '2021', 'Azul', 19),
('ZAB3456', '2020', 'Amarelo', 20),
('CDE7890', '2022', 'Verde', 21),
('FGH0123', '2021', 'Marrom', 22),
('IJK4567', '2019', 'Laranja', 23),
('LMN8901', '2022', 'Roxo', 24),
('OPQ2345', '2021', 'Bege', 25),
('RST6789', '2020', 'Dourado', 26),
('UVW0123', '2022', 'Prata', 27),
('XYZ3456', '2021', 'Cinza', 28),
('ABC7890', '2020', 'Branco', 29),
('DEF0123', '2022', 'Preto', 30);

SET FOREIGN_KEY_CHECKS=1;
INSERT INTO Contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-07-01', '2024-07-10', 500.00);
SET FOREIGN_KEY_CHECKS=1;
/*Inserindo registos nas tabelas*/
INSERT INTO Marcas (nome) VALUES ('Toyota'), ('Honda'), ('Ford');

INSERT INTO Modelos (nome, id_marca) VALUES
('Corolla', 1),
('Civic', 2),
('Focus', 3);

INSERT INTO Veiculos (placa, ano, cor, id_modelo) VALUES 
('ABC1234', 2020, 'Preto', 1), 
('XVZ5678', 2021, 'Branco', 2), 
('LMN9101', 2019, 'Azul', 3);

INSERT INTO Clientes (nome, cpf, telefone, endereco) VALUES
('Carlos Silva', '123.456.789-00', '(11) 98765-4321', 'Rua A, 123'), 
('Maria Oliveira', '234.587.890-11', '(21) 98765-4321', 'Rua B, 456'), 
('João Santos', '345.678.901-22', '(31) 98765-4321', 'Rua C, 789');
SET FOREIGN_KEY_CHECKS=1;
INSERT INTO Contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-08-01', '2024-08-07', 350.00),
(2, 2, '2024-08-05', NULL, NULL),
(3, 3, '2024-08-10', '2024-08-15', 400.00);
SET FOREIGN_KEY_CHECKS=1;
INSERT INTO Pagamentos (id_contrato, data_pagamento, valor, metodo) VALUES
(1, '2024-08-01', 350.00, 'Cartão de Crédito'), 
(3, '2024-08-10', 400.00, 'Dinheiro');
SET FOREIGN_KEY_CHECKS=1;
INSERT INTO Pagamentos (id_contrato, data_pagamento, valor, metodo) VALUES
(1, '2024-08-01', 350.00, 'Cartão de Crédito'), 
(3, '2024-08-10', 400.00, 'Dinheiro');

