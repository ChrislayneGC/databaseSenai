USE clinica_medica;

-- Tabela de Pacientes
CREATE TABLE IF NOT EXISTS paciente (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(40),
    telefone VARCHAR(14),
    numero_plano INT,
    nome_plano VARCHAR(20),
    tipo_plano VARCHAR(10)
);

-- Tabela de Médicos
CREATE TABLE IF NOT EXISTS medico (
    crm INT PRIMARY KEY,
    nome VARCHAR(30),
    especialidade VARCHAR(20)
);

-- Tabela de Pedidos de Exame
CREATE TABLE IF NOT EXISTS pedido_exame (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    resultado VARCHAR(40), 
    data_exame DATE,
    valor_pagar DECIMAL(10, 2),
    consulta_id INT,
    exame_id INT
);

-- Tabela de Consultas
CREATE TABLE IF NOT EXISTS consulta (
    consulta_id INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATE,
    horario_consulta TIME,
    paciente_cpf VARCHAR(14),
    medico_crm INT
);

-- Tabela de Exames
CREATE TABLE IF NOT EXISTS exame (
    codigo INT PRIMARY KEY,
    especificacao VARCHAR(50), -- Aumentei o tamanho do campo
    preco DECIMAL(10, 2)
);

-- Adiciona as restrições de chave estrangeira
ALTER TABLE pedido_exame ADD CONSTRAINT FK_pedido_exame_consulta
    FOREIGN KEY (consulta_id)
    REFERENCES consulta (consulta_id)
    ON DELETE CASCADE;
 
ALTER TABLE pedido_exame ADD CONSTRAINT FK_pedido_exame_exame
    FOREIGN KEY (exame_id)
    REFERENCES exame (codigo);
  
ALTER TABLE consulta ADD CONSTRAINT FK_consulta_paciente
    FOREIGN KEY (paciente_cpf)
    REFERENCES paciente (cpf)
    ON DELETE CASCADE;
 
ALTER TABLE consulta ADD CONSTRAINT FK_consulta_medico
    FOREIGN KEY (medico_crm)
    REFERENCES medico (crm)
    ON DELETE CASCADE;