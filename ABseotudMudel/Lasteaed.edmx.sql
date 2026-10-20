
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/20/2026 08:56:52
-- Generated from EDMX file: C:\Users\opilane\source\repos\ABseotudMudel-main\ABseotudMudel-main\ABseotudMudel\Lasteaed.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [lasteaedMudelDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[RühmIDSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RühmIDSet];
GO
IF OBJECT_ID(N'[dbo].[Entity1Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entity1Set];
GO
IF OBJECT_ID(N'[dbo].[Entity2Set]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entity2Set];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'RühmSet'
CREATE TABLE [dbo].[RühmSet] (
    [rühmID] int IDENTITY(1,1) NOT NULL,
    [ruhmNimi] nvarchar(max)  NOT NULL,
    [Lasteaed_lasteaedID] int  NOT NULL
);
GO

-- Creating table 'AmetSet'
CREATE TABLE [dbo].[AmetSet] (
    [ametID] int IDENTITY(1,1) NOT NULL,
    [ametNimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LasteaedSet'
CREATE TABLE [dbo].[LasteaedSet] (
    [lasteaedID] int IDENTITY(1,1) NOT NULL,
    [lasteaedNimi] nvarchar(max)  NOT NULL,
    [lasteaedAadress] nvarchar(max)  NOT NULL,
    [lasteaedTel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KasvatajadSet'
CREATE TABLE [dbo].[KasvatajadSet] (
    [kasvatajaID] int IDENTITY(1,1) NOT NULL,
    [kasvatajaNimi] nvarchar(max)  NOT NULL,
    [kasvatajaPerenimi] nvarchar(max)  NOT NULL,
    [kasvatajaTel] nvarchar(max)  NOT NULL,
    [Amet_ametID] int  NOT NULL,
    [Lasteaed_lasteaedID] int  NOT NULL
);
GO

-- Creating table 'TöötamiseAjaluguSet'
CREATE TABLE [dbo].[TöötamiseAjaluguSet] (
    [TöötamiseAjaluguID] int IDENTITY(1,1) NOT NULL,
    [AlguseAeg] nvarchar(max)  NOT NULL,
    [Amet_ametID] int  NOT NULL,
    [Kasvatajad_kasvatajaID] int  NOT NULL
);
GO

-- Creating table 'RühmKasvatajadSet'
CREATE TABLE [dbo].[RühmKasvatajadSet] (
    [ruhmKasvajaID] int IDENTITY(1,1) NOT NULL,
    [Rühm_rühmID] int  NOT NULL,
    [Kasvatajad_kasvatajaID] int  NOT NULL
);
GO

-- Creating table 'LapsSet'
CREATE TABLE [dbo].[LapsSet] (
    [lapsID] int IDENTITY(1,1) NOT NULL,
    [lapsNimi] nvarchar(max)  NOT NULL,
    [lapsPerenimi] nvarchar(max)  NOT NULL,
    [lapsIsikukood] nvarchar(max)  NOT NULL,
    [lapsVanus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LapsevanemSet'
CREATE TABLE [dbo].[LapsevanemSet] (
    [lapsevanemID] int IDENTITY(1,1) NOT NULL,
    [lapsevanemNimi] nvarchar(max)  NOT NULL,
    [lapsevanemPerenimi] nvarchar(max)  NOT NULL,
    [lapsevanemTel] nvarchar(max)  NOT NULL,
    [lapsevanemEpost] nvarchar(max)  NOT NULL,
    [lapsevanemIsikukood] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PereSet'
CREATE TABLE [dbo].[PereSet] (
    [pereID] int IDENTITY(1,1) NOT NULL,
    [Laps_lapsID] int  NOT NULL,
    [Lapsevanem_lapsevanemID] int  NOT NULL
);
GO

-- Creating table 'LapsRühmSet'
CREATE TABLE [dbo].[LapsRühmSet] (
    [lapsRühmID] int IDENTITY(1,1) NOT NULL,
    [Rühm_rühmID] int  NOT NULL,
    [Laps_lapsID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [rühmID] in table 'RühmSet'
ALTER TABLE [dbo].[RühmSet]
ADD CONSTRAINT [PK_RühmSet]
    PRIMARY KEY CLUSTERED ([rühmID] ASC);
GO

-- Creating primary key on [ametID] in table 'AmetSet'
ALTER TABLE [dbo].[AmetSet]
ADD CONSTRAINT [PK_AmetSet]
    PRIMARY KEY CLUSTERED ([ametID] ASC);
GO

-- Creating primary key on [lasteaedID] in table 'LasteaedSet'
ALTER TABLE [dbo].[LasteaedSet]
ADD CONSTRAINT [PK_LasteaedSet]
    PRIMARY KEY CLUSTERED ([lasteaedID] ASC);
GO

-- Creating primary key on [kasvatajaID] in table 'KasvatajadSet'
ALTER TABLE [dbo].[KasvatajadSet]
ADD CONSTRAINT [PK_KasvatajadSet]
    PRIMARY KEY CLUSTERED ([kasvatajaID] ASC);
GO

-- Creating primary key on [TöötamiseAjaluguID] in table 'TöötamiseAjaluguSet'
ALTER TABLE [dbo].[TöötamiseAjaluguSet]
ADD CONSTRAINT [PK_TöötamiseAjaluguSet]
    PRIMARY KEY CLUSTERED ([TöötamiseAjaluguID] ASC);
GO

-- Creating primary key on [ruhmKasvajaID] in table 'RühmKasvatajadSet'
ALTER TABLE [dbo].[RühmKasvatajadSet]
ADD CONSTRAINT [PK_RühmKasvatajadSet]
    PRIMARY KEY CLUSTERED ([ruhmKasvajaID] ASC);
GO

-- Creating primary key on [lapsID] in table 'LapsSet'
ALTER TABLE [dbo].[LapsSet]
ADD CONSTRAINT [PK_LapsSet]
    PRIMARY KEY CLUSTERED ([lapsID] ASC);
GO

-- Creating primary key on [lapsevanemID] in table 'LapsevanemSet'
ALTER TABLE [dbo].[LapsevanemSet]
ADD CONSTRAINT [PK_LapsevanemSet]
    PRIMARY KEY CLUSTERED ([lapsevanemID] ASC);
GO

-- Creating primary key on [pereID] in table 'PereSet'
ALTER TABLE [dbo].[PereSet]
ADD CONSTRAINT [PK_PereSet]
    PRIMARY KEY CLUSTERED ([pereID] ASC);
GO

-- Creating primary key on [lapsRühmID] in table 'LapsRühmSet'
ALTER TABLE [dbo].[LapsRühmSet]
ADD CONSTRAINT [PK_LapsRühmSet]
    PRIMARY KEY CLUSTERED ([lapsRühmID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Lasteaed_lasteaedID] in table 'RühmSet'
ALTER TABLE [dbo].[RühmSet]
ADD CONSTRAINT [FK_LasteaedRühm]
    FOREIGN KEY ([Lasteaed_lasteaedID])
    REFERENCES [dbo].[LasteaedSet]
        ([lasteaedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LasteaedRühm'
CREATE INDEX [IX_FK_LasteaedRühm]
ON [dbo].[RühmSet]
    ([Lasteaed_lasteaedID]);
GO

-- Creating foreign key on [Amet_ametID] in table 'KasvatajadSet'
ALTER TABLE [dbo].[KasvatajadSet]
ADD CONSTRAINT [FK_AmetKasvatajad]
    FOREIGN KEY ([Amet_ametID])
    REFERENCES [dbo].[AmetSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AmetKasvatajad'
CREATE INDEX [IX_FK_AmetKasvatajad]
ON [dbo].[KasvatajadSet]
    ([Amet_ametID]);
GO

-- Creating foreign key on [Lasteaed_lasteaedID] in table 'KasvatajadSet'
ALTER TABLE [dbo].[KasvatajadSet]
ADD CONSTRAINT [FK_LasteaedKasvatajad]
    FOREIGN KEY ([Lasteaed_lasteaedID])
    REFERENCES [dbo].[LasteaedSet]
        ([lasteaedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LasteaedKasvatajad'
CREATE INDEX [IX_FK_LasteaedKasvatajad]
ON [dbo].[KasvatajadSet]
    ([Lasteaed_lasteaedID]);
GO

-- Creating foreign key on [Amet_ametID] in table 'TöötamiseAjaluguSet'
ALTER TABLE [dbo].[TöötamiseAjaluguSet]
ADD CONSTRAINT [FK_AmetTöötamiseAjalugu]
    FOREIGN KEY ([Amet_ametID])
    REFERENCES [dbo].[AmetSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AmetTöötamiseAjalugu'
CREATE INDEX [IX_FK_AmetTöötamiseAjalugu]
ON [dbo].[TöötamiseAjaluguSet]
    ([Amet_ametID]);
GO

-- Creating foreign key on [Kasvatajad_kasvatajaID] in table 'TöötamiseAjaluguSet'
ALTER TABLE [dbo].[TöötamiseAjaluguSet]
ADD CONSTRAINT [FK_KasvatajadTöötamiseAjalugu]
    FOREIGN KEY ([Kasvatajad_kasvatajaID])
    REFERENCES [dbo].[KasvatajadSet]
        ([kasvatajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KasvatajadTöötamiseAjalugu'
CREATE INDEX [IX_FK_KasvatajadTöötamiseAjalugu]
ON [dbo].[TöötamiseAjaluguSet]
    ([Kasvatajad_kasvatajaID]);
GO

-- Creating foreign key on [Rühm_rühmID] in table 'RühmKasvatajadSet'
ALTER TABLE [dbo].[RühmKasvatajadSet]
ADD CONSTRAINT [FK_RühmRühmKasvatajad]
    FOREIGN KEY ([Rühm_rühmID])
    REFERENCES [dbo].[RühmSet]
        ([rühmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RühmRühmKasvatajad'
CREATE INDEX [IX_FK_RühmRühmKasvatajad]
ON [dbo].[RühmKasvatajadSet]
    ([Rühm_rühmID]);
GO

-- Creating foreign key on [Kasvatajad_kasvatajaID] in table 'RühmKasvatajadSet'
ALTER TABLE [dbo].[RühmKasvatajadSet]
ADD CONSTRAINT [FK_KasvatajadRühmKasvatajad]
    FOREIGN KEY ([Kasvatajad_kasvatajaID])
    REFERENCES [dbo].[KasvatajadSet]
        ([kasvatajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KasvatajadRühmKasvatajad'
CREATE INDEX [IX_FK_KasvatajadRühmKasvatajad]
ON [dbo].[RühmKasvatajadSet]
    ([Kasvatajad_kasvatajaID]);
GO

-- Creating foreign key on [Laps_lapsID] in table 'PereSet'
ALTER TABLE [dbo].[PereSet]
ADD CONSTRAINT [FK_LapsPere]
    FOREIGN KEY ([Laps_lapsID])
    REFERENCES [dbo].[LapsSet]
        ([lapsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LapsPere'
CREATE INDEX [IX_FK_LapsPere]
ON [dbo].[PereSet]
    ([Laps_lapsID]);
GO

-- Creating foreign key on [Lapsevanem_lapsevanemID] in table 'PereSet'
ALTER TABLE [dbo].[PereSet]
ADD CONSTRAINT [FK_LapsevanemPere]
    FOREIGN KEY ([Lapsevanem_lapsevanemID])
    REFERENCES [dbo].[LapsevanemSet]
        ([lapsevanemID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LapsevanemPere'
CREATE INDEX [IX_FK_LapsevanemPere]
ON [dbo].[PereSet]
    ([Lapsevanem_lapsevanemID]);
GO

-- Creating foreign key on [Rühm_rühmID] in table 'LapsRühmSet'
ALTER TABLE [dbo].[LapsRühmSet]
ADD CONSTRAINT [FK_RühmLapsRühm]
    FOREIGN KEY ([Rühm_rühmID])
    REFERENCES [dbo].[RühmSet]
        ([rühmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RühmLapsRühm'
CREATE INDEX [IX_FK_RühmLapsRühm]
ON [dbo].[LapsRühmSet]
    ([Rühm_rühmID]);
GO

-- Creating foreign key on [Laps_lapsID] in table 'LapsRühmSet'
ALTER TABLE [dbo].[LapsRühmSet]
ADD CONSTRAINT [FK_LapsLapsRühm]
    FOREIGN KEY ([Laps_lapsID])
    REFERENCES [dbo].[LapsSet]
        ([lapsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LapsLapsRühm'
CREATE INDEX [IX_FK_LapsLapsRühm]
ON [dbo].[LapsRühmSet]
    ([Laps_lapsID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------