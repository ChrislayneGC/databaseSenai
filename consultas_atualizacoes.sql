-- Use o banco de dados
USE clinica_medica;

-- Alteração de dados de tabelas -----------------------------------
-- Atualizações
UPDATE paciente SET nome = 'Novo Nome' WHERE cpf = '012.345.678-90';
UPDATE medico SET especialidade = 'Nova Especialidade' WHERE crm = 102030;

-- Exclusões
DELETE FROM paciente WHERE cpf = '456.789.012-34';
DELETE FROM medico WHERE crm = 708090;