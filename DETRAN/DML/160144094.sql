DROP database detran;
create database detran;
use detran;

create table Proprietario(
	CPF varchar(15) primary key,
	Nome varchar(20) not null,
	Endereco varchar(40) not null,
	Bairro varchar(40) not null,
	Cidade varchar(40) not null,
	Estado varchar(40) not null,
	Telefone int not null,
	Sexo varchar(1) not null,
	Data_de_Nascimento date not null);
    
create table Veiculo(
	Placa varchar(15) primary key,
	Chassi varchar(20) not null,
	Cor varchar(20) not null,
	Modelo varchar(20) not null,
	Categoria varchar(20) not null,
	Ano_de_Fabricacao int not null,
    Proprietario_CPF varchar(20) not null,
    FOREIGN KEY (Proprietario_CPF) references Proprietario(CPF));

create table Local(
	Codigo int primary key,
	Velocidade_Permitida int not null,
	Posicao_Geografica varchar(20) not null);
    
create table Agente_de_Transito(
	Matricula int primary key,
	Nome varchar(20) not null,
	Data_de_Contratacao date not null);

create table Infracao(
	Data_Hora datetime not null,
	Tipo_Infracao int not null,
	Infrator varchar(20) not null,
	Velocidade int not null,
    Veiculo_Placa varchar(20) not null,
    Proprietario_CPF varchar(15) not null,
    Local_Codigo int not null,
    Matricula_Agente_De_Transito int not null,
	Valor int not null,
    FOREIGN KEY (Veiculo_Placa) references Veiculo(Placa),
    FOREIGN KEY (Proprietario_CPF) references Proprietario(CPF),
    FOREIGN KEY (Local_Codigo) references Local(Codigo),
    FOREIGN KEY (Matricula_Agente_De_Transito) references Agente_de_transito(Matricula),
    PRIMARY KEY (Data_Hora,Tipo_Infracao,Infrator));
