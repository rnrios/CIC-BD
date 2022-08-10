SELECT Pacientes.Nome,Preço FROM Medicamentos,Pacientes_Medicamentos,Pacientes
WHERE CPF = Pacientes_CPF AND Medicamentos_Codigo = Medicamentos.Codigo;

SELECT Pacientes.Nome,Enfermidades.Nome AS NomeDaEnfermidade,Gravidade FROM Enfermidades,Pacientes_Enfermidades,Pacientes
WHERE CPF = Pacientes_CPF AND Enfermidade_Nome = Enfermidades.Nome;

SELECT Pacientes.Nome,Hospital.Endereço FROM Hospital,Hospital_Pacientes,Pacientes
WHERE CPF = Pacientes_CPF AND Hospital_Codigo = Codigo;

SELECT Pacientes.Nome,Hospital_Codigo FROM Hospital_Pacientes,Pacientes,Testes
WHERE CPF = Testes.Pacientes_CPF AND CPF = Hospital_Pacientes.Pacientes_CPF;

SELECT Pacientes.Nome,Telefone FROM Hospital_Pacientes,Pacientes,Telefone_Pacientes
WHERE CPF = Telefone_Pacientes.Pacientes_CPF AND CPF = Hospital_Pacientes.Pacientes_CPF;

SELECT * FROM Pacientes_Medicamentos;

SELECT Nome,Endereço, CPF FROM Pacientes
