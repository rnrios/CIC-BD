create database detran;
use detran;

create table proprietario(
	CPF varchar(15) primary key,
	Idade int(20) not null,
	Nome varchar(20) not null,
	Endereco varchar(20) not null,
	Bairro varchar(20) not null,
	Cidade varchar(20) not null,
	Estado varchar(20) not null,
	Telefone int(10) not null,
	Sexo varchar(6) not null,
	Data_de_Nascimento date not null);
    
create table Veiculo(
	Placa varchar(15) primary key,
	Chassi varchar(20) not null,
	Cor varchar(20) not null,
	Modelo varchar(20) not null,
	Categoria varchar(20) not null,
	Ano_de_Fabricacao date not null,
    Proprietario_CPF varchar(20) not null,
    FOREIGN KEY (Proprietario_CPF) references proprietario(CPF));
    
create table Tipo_de_Infracao(
	Codigo int primary key,
	Valor int not null);

create table localidade(
	Codigo int primary key,
	Velocidade_Permitida int not null,
	Posicao_Geografica varchar(20) not null);
    
create table Agente_de_Transito(
	Matricula int primary key,
	Nome varchar(20) not null,
	Data_de_Contratacao date not null,
	Tempo_de_Servico int not null);
    
create table Infracao(
	Data_Hora varchar(15) primary key,
	Infrator varchar(20) not null,
	Velocidade int(5) not null,
    Veiculo_Placa varchar(20) not null,
    Veiculo_Proprietario_CPF varchar(20) not null,
    Tipo_de_Infracao_Codigo int not null,
    Localidade_Codigo int not null,
    Matricula_Agente_De_Transito int not null,
    FOREIGN KEY (Veiculo_Placa) references Veiculo(Placa),
    FOREIGN KEY (Veiculo_Proprietario_CPF) references Veiculo(Proprietario_CPF),
    FOREIGN KEY (Tipo_de_Infracao_Codigo) references Tipo_de_Infracao(Codigo),
    FOREIGN KEY (Localidade_Codigo) references localidade(Codigo),
    FOREIGN KEY (Matricula_Agente_De_Transito) references Agente_de_transito(Matricula));
    
