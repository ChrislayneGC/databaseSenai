-- Inclusão de dados ---------------------------------------------

-- Tabela paciente
INSERT INTO paciente (cpf, nome, telefone, numero_plano, nome_plano, tipo_plano)
VALUES
    ('012.345.678-90', 'Leonardo Ribeiro', '(11)91234-5678', 123456, 'Inovamed', 'Padrão'),
    ('123.456.789-12', 'Bruna Alves', '(15)92345-6789', 234567, 'Ultramed', 'Básico'),
    ('234.567.890-23', 'Gilberto Barros', '(11)94567-8901', 345678, 'Inovamed', 'Especial'),
    ('345.678.901-45', 'Maria Pereira', '(12)95678-9012', 456789, 'Ultramed', 'Padrão'),
    ('456.789.012-34', 'Aguinaldo Coelho', '(19)96789-0123', 567890, 'Inovamed', 'Especial');

-- Tabela médico
INSERT INTO medico (crm, nome, especialidade)
VALUES
    (102030, 'Agildo Nunes', 'Cardiologia'),
    (203040, 'Márcia Alves', 'Gastrologia'),
    (304050, 'Roberto Gusmão', 'Neurologia'),
    (405060, 'Edna Cardoso', 'Ortopedia'),
    (506070, 'Ricardo Souza', 'Otorrinolaringologia'),
    (607080, 'Lúcia Marques', 'Pediatria'),
    (708090, 'Beatriz Lucena', 'Ginecologia');

-- Tabela exame
INSERT INTO exame (codigo, especificacao, preco)
VALUES
    (10020, 'Hemograma', 100.00),
    (10030, 'Tomografia', 250.00),
    (10040, 'Ultrassonografia', 550.00),
    (10050, 'Ressonância', 800.00),
    (10060, 'Radiografia', 70.00),
    (10070, 'Mamografia', 150.00),
    (10080, 'Endoscopia', 300.00),
    (10090, 'Colonoscopia', 300.00),
    (10100, 'Eletrocardiograma', 50.00),
    (10110, 'Ecocardiograma', 135.00),
    (10120, 'Audiometria', 65.00);

-- Tabela consulta
INSERT INTO consulta (data_consulta, horario_consulta, paciente_cpf, medico_crm)
VALUES
    ('2022-12-12', '14:30', '012.345.678-90', 102030),
    ('2022-12-13', '08:30', '123.456.789-12', 203040),
    ('2022-12-13', '11:00', '123.456.789-12', 304050),
    ('2022-12-14', '10:00', '234.567.890-23', 203040),
    ('2022-12-15', '15:00', '345.678.901-45', 405060),
    ('2022-12-16', '10:00', '123.456.789-12', 506070),
    ('2022-12-19', '16:45', '234.567.890-23', 102030),
    ('2022-12-19', '18:00', '345.678.901-45', 607080),
    ('2022-12-20', '09:00', '012.345.678-90', 304050),
    ('2022-12-20', '14:20', '123.456.789-12', 102030);

-- Tabela pedido_exame
INSERT INTO pedido_exame (resultado, data_exame, consulta_id, exame_id)
VALUES
    ('Normal', '2022-12-15', 1, 3),
    ('', '2022-12-19', 1, 9),
    ('', '2022-12-16', 2, 7),
    ('Normal', '2022-12-15', 3, 4),
    ('Inconsistente', '2022-12-16', 3, 7),
    ('', '2022-12-17', 4, 5),
    ('Normal', '2022-12-21', 7, 1),
    ('', '2022-12-22', 8, 2),
    ('', '2022-12-22', 8, 4);