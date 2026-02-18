
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/11/2025 14:45:00
-- Generated from EDMX file: C:\Users\20241stads009\Documents\Trabalho_ecommerce_teste\Trabalho_ecommerce_teste\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [banco_ecommerce];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PedidoItens_Pedidos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoItens] DROP CONSTRAINT [FK_PedidoItens_Pedidos];
GO
IF OBJECT_ID(N'[dbo].[FK_PedidoItens_Produtos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoItens] DROP CONSTRAINT [FK_PedidoItens_Produtos];
GO
IF OBJECT_ID(N'[dbo].[FK_Pedidos_Clientes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [FK_Pedidos_Clientes];
GO
IF OBJECT_ID(N'[dbo].[FK_Produtos_Categorias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Produtos] DROP CONSTRAINT [FK_Produtos_Categorias];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clientes];
GO
IF OBJECT_ID(N'[dbo].[PedidoItens]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PedidoItens];
GO
IF OBJECT_ID(N'[dbo].[Pedidos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pedidos];
GO
IF OBJECT_ID(N'[dbo].[Produtos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Produtos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [CategoriaId] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Clientes'
CREATE TABLE [dbo].[Clientes] (
    [ClienteId] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(100)  NOT NULL,
    [Email] nvarchar(100)  NOT NULL,
    [SenhaHash] nvarchar(1000)  NOT NULL,
    [Telefone] nvarchar(15)  NULL,
    [IsBloqueado] bit  NOT NULL,
    [IsAdmin] bit  NOT NULL
);
GO

-- Creating table 'PedidoItens'
CREATE TABLE [dbo].[PedidoItens] (
    [PedidoItemId] int IDENTITY(1,1) NOT NULL,
    [Quantidade] int  NOT NULL,
    [PrecoUnitario] decimal(18,2)  NOT NULL,
    [PedidoId] int  NOT NULL,
    [ProdutoId] int  NOT NULL
);
GO

-- Creating table 'Pedidos'
CREATE TABLE [dbo].[Pedidos] (
    [PedidoId] int IDENTITY(1,1) NOT NULL,
    [DataPedido] datetime  NOT NULL,
    [Status] int  NOT NULL,
    [MotivoCancelamento] nvarchar(200)  NULL,
    [ValorTotal] decimal(18,2)  NOT NULL,
    [ClienteId] int  NOT NULL
);
GO

-- Creating table 'Produtos'
CREATE TABLE [dbo].[Produtos] (
    [ProdutoId] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(100)  NOT NULL,
    [Descricao] nvarchar(max)  NULL,
    [Preco] decimal(18,2)  NOT NULL,
    [ImagemUrl] nvarchar(500)  NULL,
    [Estoque] int  NOT NULL,
    [Disponibilidade] bit  NOT NULL,
    [CategoriaId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CategoriaId] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([CategoriaId] ASC);
GO

-- Creating primary key on [ClienteId] in table 'Clientes'
ALTER TABLE [dbo].[Clientes]
ADD CONSTRAINT [PK_Clientes]
    PRIMARY KEY CLUSTERED ([ClienteId] ASC);
GO

-- Creating primary key on [PedidoItemId] in table 'PedidoItens'
ALTER TABLE [dbo].[PedidoItens]
ADD CONSTRAINT [PK_PedidoItens]
    PRIMARY KEY CLUSTERED ([PedidoItemId] ASC);
GO

-- Creating primary key on [PedidoId] in table 'Pedidos'
ALTER TABLE [dbo].[Pedidos]
ADD CONSTRAINT [PK_Pedidos]
    PRIMARY KEY CLUSTERED ([PedidoId] ASC);
GO

-- Creating primary key on [ProdutoId] in table 'Produtos'
ALTER TABLE [dbo].[Produtos]
ADD CONSTRAINT [PK_Produtos]
    PRIMARY KEY CLUSTERED ([ProdutoId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoriaId] in table 'Produtos'
ALTER TABLE [dbo].[Produtos]
ADD CONSTRAINT [FK_Produtos_Categorias]
    FOREIGN KEY ([CategoriaId])
    REFERENCES [dbo].[Categorias]
        ([CategoriaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Produtos_Categorias'
CREATE INDEX [IX_FK_Produtos_Categorias]
ON [dbo].[Produtos]
    ([CategoriaId]);
GO

-- Creating foreign key on [ClienteId] in table 'Pedidos'
ALTER TABLE [dbo].[Pedidos]
ADD CONSTRAINT [FK_Pedidos_Clientes]
    FOREIGN KEY ([ClienteId])
    REFERENCES [dbo].[Clientes]
        ([ClienteId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Pedidos_Clientes'
CREATE INDEX [IX_FK_Pedidos_Clientes]
ON [dbo].[Pedidos]
    ([ClienteId]);
GO

-- Creating foreign key on [PedidoId] in table 'PedidoItens'
ALTER TABLE [dbo].[PedidoItens]
ADD CONSTRAINT [FK_PedidoItens_Pedidos]
    FOREIGN KEY ([PedidoId])
    REFERENCES [dbo].[Pedidos]
        ([PedidoId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PedidoItens_Pedidos'
CREATE INDEX [IX_FK_PedidoItens_Pedidos]
ON [dbo].[PedidoItens]
    ([PedidoId]);
GO

-- Creating foreign key on [ProdutoId] in table 'PedidoItens'
ALTER TABLE [dbo].[PedidoItens]
ADD CONSTRAINT [FK_PedidoItens_Produtos]
    FOREIGN KEY ([ProdutoId])
    REFERENCES [dbo].[Produtos]
        ([ProdutoId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PedidoItens_Produtos'
CREATE INDEX [IX_FK_PedidoItens_Produtos]
ON [dbo].[PedidoItens]
    ([ProdutoId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------