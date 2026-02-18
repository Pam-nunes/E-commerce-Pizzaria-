/*script do banco de dados*/

CREATE DATABASE LaFlorenca
USE LaFlorenca

PRINT 'Criando tabela [Clientes]...';
CREATE TABLE [dbo].[Clientes] (
    [ClienteId]   INT IDENTITY(1,1) NOT NULL,
    [Nome]        NVARCHAR(100) NOT NULL,
    [Email]       NVARCHAR(100) NOT NULL,
    [SenhaHash]   NVARCHAR(MAX) NOT NULL,
    [Telefone]    NVARCHAR(15)  NULL,
    [IsBloqueado] BIT NOT NULL DEFAULT 0,
    [IsAdmin]     BIT NOT NULL DEFAULT 0,
    
    CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED ([ClienteId] ASC),
    CONSTRAINT [UQ_Clientes_Email] UNIQUE NONCLUSTERED ([Email] ASC)
);
GO

PRINT 'Criando tabela [Categorias]...';
CREATE TABLE [dbo].[Categorias] (
    [CategoriaId] INT IDENTITY(1,1) NOT NULL,
    [Nome]        NVARCHAR(50) NOT NULL,
    
    CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED ([CategoriaId] ASC)
);
GO

PRINT 'Criando tabela [Produtos]...';
CREATE TABLE [dbo].[Produtos] (
    [ProdutoId]       INT IDENTITY(1,1) NOT NULL,
    [Nome]            NVARCHAR(100) NOT NULL,
    [Descricao]       NVARCHAR(MAX) NULL,
    [Preco]           DECIMAL(18, 2) NOT NULL,
    [ImagemUrl]       NVARCHAR(500) NULL,
    [Estoque]         INT NOT NULL DEFAULT 100,
    [Data_Cadastro]   DATETIME NOT NULL DEFAULT GETDATE(),  -- substitui Disponibilidade
    [CategoriaId]     INT NOT NULL,

    CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED ([ProdutoId] ASC),
    CONSTRAINT [FK_Produtos_Categorias] FOREIGN KEY ([CategoriaId])
        REFERENCES [dbo].[Categorias] ([CategoriaId])
);
GO

PRINT 'Criando tabela [Pedidos]...';
CREATE TABLE [dbo].[Pedidos] (
    [PedidoId]           INT IDENTITY(1,1) NOT NULL,
    [DataPedido]         DATETIME2 NOT NULL DEFAULT GETDATE(),
    [Status]             INT NOT NULL DEFAULT 0,
    [MotivoCancelamento] NVARCHAR(200) NULL,
    [ValorTotal]         DECIMAL(18, 2) NOT NULL,
    [ClienteId]          INT NOT NULL,
    
    CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED ([PedidoId] ASC),
    CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY ([ClienteId])
        REFERENCES [dbo].[Clientes] ([ClienteId])
);
GO

PRINT 'Criando tabela [PedidoItens]...';
CREATE TABLE [dbo].[PedidoItens] (
    [PedidoItemId]  INT IDENTITY(1,1) NOT NULL,
    [Quantidade]    INT NOT NULL,
    [PrecoUnitario] DECIMAL(18, 2) NOT NULL,
    [PedidoId]      INT NOT NULL,
    [ProdutoId]     INT NOT NULL,
    
    CONSTRAINT [PK_PedidoItens] PRIMARY KEY CLUSTERED ([PedidoItemId] ASC),
    CONSTRAINT [FK_PedidoItens_Pedidos] FOREIGN KEY ([PedidoId])
        REFERENCES [dbo].[Pedidos] ([PedidoId]) ON DELETE CASCADE,
    CONSTRAINT [FK_PedidoItens_Produtos] FOREIGN KEY ([ProdutoId])
        REFERENCES [dbo].[Produtos] ([ProdutoId]) ON DELETE NO ACTION
);
GO

INSERT INTO [dbo].[Categorias] (Nome) VALUES ('Pizzas Artesanais');
GO

-- Inserindo a segunda categoria
INSERT INTO [dbo].[Categorias] (Nome) VALUES ('Pizzas Doces');
GO

-- Inserindo a terceira categoria
INSERT INTO [dbo].[Categorias] (Nome) VALUES ('Bebidas');
GO

-- Inserindo a quarta categoria
INSERT INTO [dbo].[Categorias] (Nome) VALUES ('Sobremesas');
GO

INSERT INTO Clientes (Nome, Email, SenhaHash, Telefone, IsBloqueado, IsAdmin)
VALUES ('Administrador', 'admin@admin.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', '00000000000', 0, 1);
GO
﻿
