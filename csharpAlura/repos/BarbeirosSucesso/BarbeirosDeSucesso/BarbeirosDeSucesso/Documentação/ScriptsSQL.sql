
Drop table USuarios

CREATE TABLE USUARIOS(
	UserId int identity,
	NomeCompleto varchar(100),
	CPFUser varchar(15),
	Login varchar(20),
	Senha varchar(20),
	Sexo varchar(1),
	Foto varchar(200),
	Ativo varchar(1),
	DataCadastro DateTime
)


Insert into USUARIOS(NomeCompleto, CPFUser, Login, Senha, Sexo, Foto, Ativo, DataCadastro)
	values('Marcelo Kiilian', '17805725810','Kiilian','abcd123','M','','S', '2019-05-13')
	
Select * from USUARIOS

CREATE TABLE TESTEMUNHOS(
	IdTestemunho int identity,
	Nome varchar(50),
	Tipo varchar(50),
	Testemunho varchar(200),
	status varchar(10),
	DataInclusao DateTime
)


update testemunhos set testemunho = 'O Alessandro é sensacional, mostra tudo de uma forma que fica bem simples nosso aprendizado e nossa vontade de colocar tudo em prática só aumenta' where idTestemunho = 6


CREATE TABLE PALESTRANTES(
	IdPalestrante int identity,
	Nome varchar(100),
	Especialidade varchar(20),
	Telefone varchar(15),
	Descricao varchar(300),
	Foto varchar(200),
	Ativo varchar(1),
	DataCadastro DateTime
)


CREATE TABLE [dbo].[EVENTOS] (
    [IdEvento]     INT            IDENTITY (1, 1) NOT NULL,
    [Titulo]       VARCHAR (100)  NULL,
    [Descricao]    VARCHAR (5000) NULL,
    [Valor]        SMALLMONEY     NULL,
    [Dias]         INT            NULL,
    [LocalEvento]  VARCHAR (30)   NULL,
    [Imagem]       VARCHAR (100)  NULL,
    [DataEvento]   DATE           NULL,
    [Horario]      TIME (7)       NULL,
    [Ativo]        VARCHAR (1)    NULL,
    [DataCadastro] DATETIME       NULL
);


