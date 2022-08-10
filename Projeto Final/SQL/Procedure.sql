use BD;
DROP PROCEDURE IF EXISTS EncontraFuncionario;
DELIMITER $$
CREATE PROCEDURE EncontraFuncionario(NOME varchar(65))
BEGIN
	SELECT Nome_Funcionario FROM Pacientes_Funcionarios
	WHERE Nome_Paciente = NOME;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS Total_Medicamentos;
DELIMITER $$
CREATE PROCEDURE Total_Medicamentos(NOME varchar(65))
BEGIN
	SELECT Pacientes.Nome,SUM(Preço) AS TOTAL,
    IF(SUM(Preço)>50,"ELEGIVEL","NÃO ELEGIVEL") AS SUBSIDIO 
    FROM Medicamentos,Pacientes_Medicamentos,Pacientes
	WHERE CPF = Pacientes_CPF 
    AND Medicamentos_Codigo = Medicamentos.Codigo 
    #AND Pacientes.Nome = NOME;
    GROUP BY Pacientes.Nome;
END $$
DELIMITER ;

#CALL EncontraFuncionario('Virgulino Ferreira');
CALL Total_Medicamentos('João Campos')