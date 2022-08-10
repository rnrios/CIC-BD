use BD;
CREATE VIEW Pacientes_Funcionarios AS

SELECT Hospital.Nome AS Nome_Hospital,Pacientes.Nome AS Nome_Paciente,Funcionarios.Nome AS
Nome_Funcionario,Funcionarios.Email
FROM (((Funcionarios
RIGHT JOIN Hospital ON Funcionarios.Hospital_Codigo = Hospital.Codigo)
INNER JOIN Hospital_Pacientes ON Hospital_Pacientes.Hospital_Codigo = Hospital.Codigo)
INNER JOIN Pacientes ON Hospital_Pacientes.Pacientes_CPF = Pacientes.CPF);
