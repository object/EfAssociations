
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/03/2010 21:44:02
-- Generated from EDMX file: D:\Projects\NET\Temp\EfAssociations\EfAssociations\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EfAssociations];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_NewD_A_NewA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewD_A] DROP CONSTRAINT [FK_NewD_A_NewA];
GO
IF OBJECT_ID(N'[dbo].[FK_NewE_B_NewB]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewE_B] DROP CONSTRAINT [FK_NewE_B_NewB];
GO
IF OBJECT_ID(N'[dbo].[FK_NewF_C_OldC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewF_C] DROP CONSTRAINT [FK_NewF_C_OldC];
GO
IF OBJECT_ID(N'[dbo].[FK_NewG_AB_NewA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewG_AB] DROP CONSTRAINT [FK_NewG_AB_NewA];
GO
IF OBJECT_ID(N'[dbo].[FK_NewG_AB_NewB]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewG_AB] DROP CONSTRAINT [FK_NewG_AB_NewB];
GO
IF OBJECT_ID(N'[dbo].[FK_NewG_keyAB_NewA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewG_keyAB] DROP CONSTRAINT [FK_NewG_keyAB_NewA];
GO
IF OBJECT_ID(N'[dbo].[FK_NewG_keyAB_NewB]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewG_keyAB] DROP CONSTRAINT [FK_NewG_keyAB_NewB];
GO
IF OBJECT_ID(N'[dbo].[FK_NewH_AC_NewA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewH_AC] DROP CONSTRAINT [FK_NewH_AC_NewA];
GO
IF OBJECT_ID(N'[dbo].[FK_NewH_AC_OldC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewH_AC] DROP CONSTRAINT [FK_NewH_AC_OldC];
GO
IF OBJECT_ID(N'[dbo].[FK_NewH_keyAC_NewA]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewH_keyAC] DROP CONSTRAINT [FK_NewH_keyAC_NewA];
GO
IF OBJECT_ID(N'[dbo].[FK_NewH_keyAC_OldC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewH_keyAC] DROP CONSTRAINT [FK_NewH_keyAC_OldC];
GO
IF OBJECT_ID(N'[dbo].[FK_NewI_D_A_NewD_A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewI_D_A] DROP CONSTRAINT [FK_NewI_D_A_NewD_A];
GO
IF OBJECT_ID(N'[dbo].[FK_NewJ_DE_AB_NewD_A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewJ_DE_AB] DROP CONSTRAINT [FK_NewJ_DE_AB_NewD_A];
GO
IF OBJECT_ID(N'[dbo].[FK_NewJ_DE_AB_NewE_B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewJ_DE_AB] DROP CONSTRAINT [FK_NewJ_DE_AB_NewE_B];
GO
IF OBJECT_ID(N'[dbo].[FK_NewK_DF_AC_NewD_A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewK_DF_AC] DROP CONSTRAINT [FK_NewK_DF_AC_NewD_A];
GO
IF OBJECT_ID(N'[dbo].[FK_NewK_DF_AC_NewF_C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewK_DF_AC] DROP CONSTRAINT [FK_NewK_DF_AC_NewF_C];
GO
IF OBJECT_ID(N'[dbo].[FK_NewL_G_AB_NewG_AB]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewL_G_AB] DROP CONSTRAINT [FK_NewL_G_AB_NewG_AB];
GO
IF OBJECT_ID(N'[dbo].[FK_NewM_H_AC_NewH_AC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewM_H_AC] DROP CONSTRAINT [FK_NewM_H_AC_NewH_AC];
GO
IF OBJECT_ID(N'[dbo].[FK_NewN_keyDEC_AB_NewD_A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewN_keyDEC_AB] DROP CONSTRAINT [FK_NewN_keyDEC_AB_NewD_A];
GO
IF OBJECT_ID(N'[dbo].[FK_NewN_keyDEC_AB_NewE_B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewN_keyDEC_AB] DROP CONSTRAINT [FK_NewN_keyDEC_AB_NewE_B];
GO
IF OBJECT_ID(N'[dbo].[FK_NewN_keyDEC_AB_OldC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewN_keyDEC_AB] DROP CONSTRAINT [FK_NewN_keyDEC_AB_OldC];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[NewA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewA];
GO
IF OBJECT_ID(N'[dbo].[NewB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewB];
GO
IF OBJECT_ID(N'[dbo].[NewD_A]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewD_A];
GO
IF OBJECT_ID(N'[dbo].[NewE_B]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewE_B];
GO
IF OBJECT_ID(N'[dbo].[NewF_C]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewF_C];
GO
IF OBJECT_ID(N'[dbo].[NewG_AB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewG_AB];
GO
IF OBJECT_ID(N'[dbo].[NewG_keyAB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewG_keyAB];
GO
IF OBJECT_ID(N'[dbo].[NewH_AC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewH_AC];
GO
IF OBJECT_ID(N'[dbo].[NewH_keyAC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewH_keyAC];
GO
IF OBJECT_ID(N'[dbo].[NewI_D_A]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewI_D_A];
GO
IF OBJECT_ID(N'[dbo].[NewJ_DE_AB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewJ_DE_AB];
GO
IF OBJECT_ID(N'[dbo].[NewK_DF_AC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewK_DF_AC];
GO
IF OBJECT_ID(N'[dbo].[NewL_G_AB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewL_G_AB];
GO
IF OBJECT_ID(N'[dbo].[NewM_H_AC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewM_H_AC];
GO
IF OBJECT_ID(N'[dbo].[NewN_keyDEC_AB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewN_keyDEC_AB];
GO
IF OBJECT_ID(N'[dbo].[OldC]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OldC];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'NewA'
CREATE TABLE [dbo].[NewA] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewB'
CREATE TABLE [dbo].[NewB] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewD_A'
CREATE TABLE [dbo].[NewD_A] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewE_B'
CREATE TABLE [dbo].[NewE_B] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewF_C'
CREATE TABLE [dbo].[NewF_C] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewG_AB'
CREATE TABLE [dbo].[NewG_AB] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AId] int  NOT NULL,
    [BId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewG_keyAB'
CREATE TABLE [dbo].[NewG_keyAB] (
    [AId] int  NOT NULL,
    [BId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewH_AC'
CREATE TABLE [dbo].[NewH_AC] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AId] int  NOT NULL,
    [CId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewH_keyAC'
CREATE TABLE [dbo].[NewH_keyAC] (
    [AId] int  NOT NULL,
    [CId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewI_D_A'
CREATE TABLE [dbo].[NewI_D_A] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewJ_DE_AB'
CREATE TABLE [dbo].[NewJ_DE_AB] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DId] int  NOT NULL,
    [EId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewK_DF_AC'
CREATE TABLE [dbo].[NewK_DF_AC] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DId] int  NOT NULL,
    [FId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewL_G_AB'
CREATE TABLE [dbo].[NewL_G_AB] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewM_H_AC'
CREATE TABLE [dbo].[NewM_H_AC] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [HId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'NewN_keyDEC_AB'
CREATE TABLE [dbo].[NewN_keyDEC_AB] (
    [DId] int  NOT NULL,
    [EId] int  NOT NULL,
    [CId] int  NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- Creating table 'OldC'
CREATE TABLE [dbo].[OldC] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Timestamp] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'NewA'
ALTER TABLE [dbo].[NewA]
ADD CONSTRAINT [PK_NewA]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewB'
ALTER TABLE [dbo].[NewB]
ADD CONSTRAINT [PK_NewB]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewD_A'
ALTER TABLE [dbo].[NewD_A]
ADD CONSTRAINT [PK_NewD_A]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewE_B'
ALTER TABLE [dbo].[NewE_B]
ADD CONSTRAINT [PK_NewE_B]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewF_C'
ALTER TABLE [dbo].[NewF_C]
ADD CONSTRAINT [PK_NewF_C]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewG_AB'
ALTER TABLE [dbo].[NewG_AB]
ADD CONSTRAINT [PK_NewG_AB]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AId], [BId] in table 'NewG_keyAB'
ALTER TABLE [dbo].[NewG_keyAB]
ADD CONSTRAINT [PK_NewG_keyAB]
    PRIMARY KEY CLUSTERED ([AId], [BId] ASC);
GO

-- Creating primary key on [Id] in table 'NewH_AC'
ALTER TABLE [dbo].[NewH_AC]
ADD CONSTRAINT [PK_NewH_AC]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AId], [CId] in table 'NewH_keyAC'
ALTER TABLE [dbo].[NewH_keyAC]
ADD CONSTRAINT [PK_NewH_keyAC]
    PRIMARY KEY CLUSTERED ([AId], [CId] ASC);
GO

-- Creating primary key on [Id] in table 'NewI_D_A'
ALTER TABLE [dbo].[NewI_D_A]
ADD CONSTRAINT [PK_NewI_D_A]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewJ_DE_AB'
ALTER TABLE [dbo].[NewJ_DE_AB]
ADD CONSTRAINT [PK_NewJ_DE_AB]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewK_DF_AC'
ALTER TABLE [dbo].[NewK_DF_AC]
ADD CONSTRAINT [PK_NewK_DF_AC]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewL_G_AB'
ALTER TABLE [dbo].[NewL_G_AB]
ADD CONSTRAINT [PK_NewL_G_AB]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NewM_H_AC'
ALTER TABLE [dbo].[NewM_H_AC]
ADD CONSTRAINT [PK_NewM_H_AC]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [DId], [EId], [CId] in table 'NewN_keyDEC_AB'
ALTER TABLE [dbo].[NewN_keyDEC_AB]
ADD CONSTRAINT [PK_NewN_keyDEC_AB]
    PRIMARY KEY CLUSTERED ([DId], [EId], [CId] ASC);
GO

-- Creating primary key on [Id] in table 'OldC'
ALTER TABLE [dbo].[OldC]
ADD CONSTRAINT [PK_OldC]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AId] in table 'NewD_A'
ALTER TABLE [dbo].[NewD_A]
ADD CONSTRAINT [FK_NewD_A_NewA]
    FOREIGN KEY ([AId])
    REFERENCES [dbo].[NewA]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewD_A_NewA'
CREATE INDEX [IX_FK_NewD_A_NewA]
ON [dbo].[NewD_A]
    ([AId]);
GO

-- Creating foreign key on [AId] in table 'NewG_AB'
ALTER TABLE [dbo].[NewG_AB]
ADD CONSTRAINT [FK_NewG_AB_NewA]
    FOREIGN KEY ([AId])
    REFERENCES [dbo].[NewA]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewG_AB_NewA'
CREATE INDEX [IX_FK_NewG_AB_NewA]
ON [dbo].[NewG_AB]
    ([AId]);
GO

-- Creating foreign key on [AId] in table 'NewG_keyAB'
ALTER TABLE [dbo].[NewG_keyAB]
ADD CONSTRAINT [FK_NewG_keyAB_NewA]
    FOREIGN KEY ([AId])
    REFERENCES [dbo].[NewA]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AId] in table 'NewH_AC'
ALTER TABLE [dbo].[NewH_AC]
ADD CONSTRAINT [FK_NewH_AC_NewA]
    FOREIGN KEY ([AId])
    REFERENCES [dbo].[NewA]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewH_AC_NewA'
CREATE INDEX [IX_FK_NewH_AC_NewA]
ON [dbo].[NewH_AC]
    ([AId]);
GO

-- Creating foreign key on [AId] in table 'NewH_keyAC'
ALTER TABLE [dbo].[NewH_keyAC]
ADD CONSTRAINT [FK_NewH_keyAC_NewA]
    FOREIGN KEY ([AId])
    REFERENCES [dbo].[NewA]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BId] in table 'NewE_B'
ALTER TABLE [dbo].[NewE_B]
ADD CONSTRAINT [FK_NewE_B_NewB]
    FOREIGN KEY ([BId])
    REFERENCES [dbo].[NewB]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewE_B_NewB'
CREATE INDEX [IX_FK_NewE_B_NewB]
ON [dbo].[NewE_B]
    ([BId]);
GO

-- Creating foreign key on [BId] in table 'NewG_AB'
ALTER TABLE [dbo].[NewG_AB]
ADD CONSTRAINT [FK_NewG_AB_NewB]
    FOREIGN KEY ([BId])
    REFERENCES [dbo].[NewB]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewG_AB_NewB'
CREATE INDEX [IX_FK_NewG_AB_NewB]
ON [dbo].[NewG_AB]
    ([BId]);
GO

-- Creating foreign key on [BId] in table 'NewG_keyAB'
ALTER TABLE [dbo].[NewG_keyAB]
ADD CONSTRAINT [FK_NewG_keyAB_NewB]
    FOREIGN KEY ([BId])
    REFERENCES [dbo].[NewB]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewG_keyAB_NewB'
CREATE INDEX [IX_FK_NewG_keyAB_NewB]
ON [dbo].[NewG_keyAB]
    ([BId]);
GO

-- Creating foreign key on [DId] in table 'NewI_D_A'
ALTER TABLE [dbo].[NewI_D_A]
ADD CONSTRAINT [FK_NewI_D_A_NewD_A]
    FOREIGN KEY ([DId])
    REFERENCES [dbo].[NewD_A]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewI_D_A_NewD_A'
CREATE INDEX [IX_FK_NewI_D_A_NewD_A]
ON [dbo].[NewI_D_A]
    ([DId]);
GO

-- Creating foreign key on [DId] in table 'NewJ_DE_AB'
ALTER TABLE [dbo].[NewJ_DE_AB]
ADD CONSTRAINT [FK_NewJ_DE_AB_NewD_A]
    FOREIGN KEY ([DId])
    REFERENCES [dbo].[NewD_A]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewJ_DE_AB_NewD_A'
CREATE INDEX [IX_FK_NewJ_DE_AB_NewD_A]
ON [dbo].[NewJ_DE_AB]
    ([DId]);
GO

-- Creating foreign key on [DId] in table 'NewK_DF_AC'
ALTER TABLE [dbo].[NewK_DF_AC]
ADD CONSTRAINT [FK_NewK_DF_AC_NewD_A]
    FOREIGN KEY ([DId])
    REFERENCES [dbo].[NewD_A]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewK_DF_AC_NewD_A'
CREATE INDEX [IX_FK_NewK_DF_AC_NewD_A]
ON [dbo].[NewK_DF_AC]
    ([DId]);
GO

-- Creating foreign key on [DId] in table 'NewN_keyDEC_AB'
ALTER TABLE [dbo].[NewN_keyDEC_AB]
ADD CONSTRAINT [FK_NewN_keyDEC_AB_NewD_A]
    FOREIGN KEY ([DId])
    REFERENCES [dbo].[NewD_A]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [EId] in table 'NewJ_DE_AB'
ALTER TABLE [dbo].[NewJ_DE_AB]
ADD CONSTRAINT [FK_NewJ_DE_AB_NewE_B]
    FOREIGN KEY ([EId])
    REFERENCES [dbo].[NewE_B]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewJ_DE_AB_NewE_B'
CREATE INDEX [IX_FK_NewJ_DE_AB_NewE_B]
ON [dbo].[NewJ_DE_AB]
    ([EId]);
GO

-- Creating foreign key on [EId] in table 'NewN_keyDEC_AB'
ALTER TABLE [dbo].[NewN_keyDEC_AB]
ADD CONSTRAINT [FK_NewN_keyDEC_AB_NewE_B]
    FOREIGN KEY ([EId])
    REFERENCES [dbo].[NewE_B]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewN_keyDEC_AB_NewE_B'
CREATE INDEX [IX_FK_NewN_keyDEC_AB_NewE_B]
ON [dbo].[NewN_keyDEC_AB]
    ([EId]);
GO

-- Creating foreign key on [CId] in table 'NewF_C'
ALTER TABLE [dbo].[NewF_C]
ADD CONSTRAINT [FK_NewF_C_OldC]
    FOREIGN KEY ([CId])
    REFERENCES [dbo].[OldC]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewF_C_OldC'
CREATE INDEX [IX_FK_NewF_C_OldC]
ON [dbo].[NewF_C]
    ([CId]);
GO

-- Creating foreign key on [FId] in table 'NewK_DF_AC'
ALTER TABLE [dbo].[NewK_DF_AC]
ADD CONSTRAINT [FK_NewK_DF_AC_NewF_C]
    FOREIGN KEY ([FId])
    REFERENCES [dbo].[NewF_C]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewK_DF_AC_NewF_C'
CREATE INDEX [IX_FK_NewK_DF_AC_NewF_C]
ON [dbo].[NewK_DF_AC]
    ([FId]);
GO

-- Creating foreign key on [GId] in table 'NewL_G_AB'
ALTER TABLE [dbo].[NewL_G_AB]
ADD CONSTRAINT [FK_NewL_G_AB_NewG_AB]
    FOREIGN KEY ([GId])
    REFERENCES [dbo].[NewG_AB]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewL_G_AB_NewG_AB'
CREATE INDEX [IX_FK_NewL_G_AB_NewG_AB]
ON [dbo].[NewL_G_AB]
    ([GId]);
GO

-- Creating foreign key on [CId] in table 'NewH_AC'
ALTER TABLE [dbo].[NewH_AC]
ADD CONSTRAINT [FK_NewH_AC_OldC]
    FOREIGN KEY ([CId])
    REFERENCES [dbo].[OldC]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewH_AC_OldC'
CREATE INDEX [IX_FK_NewH_AC_OldC]
ON [dbo].[NewH_AC]
    ([CId]);
GO

-- Creating foreign key on [HId] in table 'NewM_H_AC'
ALTER TABLE [dbo].[NewM_H_AC]
ADD CONSTRAINT [FK_NewM_H_AC_NewH_AC]
    FOREIGN KEY ([HId])
    REFERENCES [dbo].[NewH_AC]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewM_H_AC_NewH_AC'
CREATE INDEX [IX_FK_NewM_H_AC_NewH_AC]
ON [dbo].[NewM_H_AC]
    ([HId]);
GO

-- Creating foreign key on [CId] in table 'NewH_keyAC'
ALTER TABLE [dbo].[NewH_keyAC]
ADD CONSTRAINT [FK_NewH_keyAC_OldC]
    FOREIGN KEY ([CId])
    REFERENCES [dbo].[OldC]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewH_keyAC_OldC'
CREATE INDEX [IX_FK_NewH_keyAC_OldC]
ON [dbo].[NewH_keyAC]
    ([CId]);
GO

-- Creating foreign key on [CId] in table 'NewN_keyDEC_AB'
ALTER TABLE [dbo].[NewN_keyDEC_AB]
ADD CONSTRAINT [FK_NewN_keyDEC_AB_OldC]
    FOREIGN KEY ([CId])
    REFERENCES [dbo].[OldC]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewN_keyDEC_AB_OldC'
CREATE INDEX [IX_FK_NewN_keyDEC_AB_OldC]
ON [dbo].[NewN_keyDEC_AB]
    ([CId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------