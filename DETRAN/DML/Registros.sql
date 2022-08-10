INSERT INTO Proprietario
VALUES('00000001','Bete','Rua J. Nabuco Casa 2','Goapaúva','Alameda Iaiá','São Paulo',33218181,'F','1965-01-04'),
('00000002','Marta','Lote 2,Casa 3','Rio das Pedras','Rio de Janeiro','Rio de Janeiro',34567854,'F','1952-05-09'),
('00000003','Alberto Caeiro','Rua do Ouvidor, Casa 1','Ramalhete','Rio de Janeiro','Rio de Janeiro',33213030,'M','1918-05-09');

INSERT INTO Veiculo
VALUES('JHG-7070','ABC1234','Vermelho','Gol','Hatch',2015,'00000001'),
('YPG-1213','CYCH4569','Cruzeiro','Hatch','Carro Leve',2019,'00000002'),
('NHK-0546','LAET8078','Cruzeiro','Sedon','Sedan',2022,'00000002');

INSERT INTO Local
VALUES(23,60,'50 N,100 O'),
(1,80,'48 S,10 O'),
(2,100,'2 N,8 L');

INSERT INTO Agente_de_Transito
VALUES(4574,'Josevaldo','2018-03-21'),
(2338,'Riobaldo','1999-02-19'),
(4585,'Valeria','2019-01-19');

INSERT INTO Infracao
VALUES('2019-05-07 18:43:21',1,'Caeiro Barbeiro',130,'NHK-0546','00000003',23,4585,800),
('2019-03-19 08:20:01',1,'Caeiro Barbeiro',150,'NHK-0546','00000003',23,4585,800),
('2019-04-28 10:30:30',2,'Caeiro Barbeiro',215,'NHK-0546','00000003',23,2338,5000);

UPDATE Local 
SET Posicao_Geografica= '2 N,7 L' WHERE Codigo = 2;
UPDATE Local 
SET Velocidade_Permitida = 70 WHERE Codigo = 1;
UPDATE Agente_de_Transito
SET Nome = 'Maria' WHERE Matricula = 2338; 

DELETE FROM Infracao WHERE Data_Hora = '2019-05-07 18:43:21';
DELETE FROM Agente_de_Transito WHERE Matricula = 4574;
DELETE FROM Local WHERE Codigo = 2;

SELECT Infrator FROM Infracao;
SELECT Data_Hora FROM Infracao;
SELECT Tipo_Infracao FROM Infracao;
SELECT Velocidade_Permitida FROM LOCAL;
SELECT Placa FROM Veiculo;

SELECT * FROM Infracao

