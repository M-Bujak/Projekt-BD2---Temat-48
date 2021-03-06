USE [Bujakwind]
GO
/****** Object:  Table [dbo].[KategorieSamochodów]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KategorieSamochodów](
	[Nazwa] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_KategorieSamochodów] PRIMARY KEY CLUSTERED 
(
	[Nazwa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Klienci]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klienci](
	[IDklienta] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](100) NOT NULL,
	[Adres] [nvarchar](100) NOT NULL,
	[Miasto] [nvarchar](100) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[Kraj] [nvarchar](100) NOT NULL,
	[KodPocztowy] [nvarchar](20) NOT NULL,
	[TelefonKontaktowy] [int] NULL,
 CONSTRAINT [PK_Klienci] PRIMARY KEY CLUSTERED 
(
	[IDklienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarkiSamochodów]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkiSamochodów](
	[Marka] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MarkiSamochodów] PRIMARY KEY CLUSTERED 
(
	[Marka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModeleSamochodów]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModeleSamochodów](
	[IDmodelu] [int] IDENTITY(1,1) NOT NULL,
	[Kategoria] [nvarchar](100) NOT NULL,
	[Marka] [nvarchar](100) NOT NULL,
	[Model] [nvarchar](100) NOT NULL,
	[MaksymalnaMasaŁadunku] [int] NOT NULL,
 CONSTRAINT [PK_ModeleSamochodów] PRIMARY KEY CLUSTERED 
(
	[IDmodelu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pracownicy]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownicy](
	[IDpracownika] [int] IDENTITY(1,1) NOT NULL,
	[Imię] [nvarchar](100) NOT NULL,
	[Nazwisko] [nvarchar](100) NOT NULL,
	[DataUrodzenia] [date] NOT NULL,
	[Adres] [nvarchar](100) NOT NULL,
	[Miasto] [nvarchar](100) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[KodPocztowy] [nvarchar](20) NOT NULL,
	[Kraj] [nvarchar](50) NOT NULL,
	[TelefonDomowy] [int] NULL,
	[TelefonKomórkowy] [int] NULL,
 CONSTRAINT [PK_Pracownicy] PRIMARY KEY CLUSTERED 
(
	[IDpracownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Przejazdy]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Przejazdy](
	[IDprzejazdu] [int] IDENTITY(1,1) NOT NULL,
	[IDpracownika] [int] NOT NULL,
	[IDsamochodu] [int] NULL,
	[IDzlecenia] [int] NOT NULL,
	[DataWyjazdu] [datetime] NULL,
	[DataWykonania] [datetime] NULL,
	[Wydatki] [money] NULL,
 CONSTRAINT [PK_Przejazdy] PRIMARY KEY CLUSTERED 
(
	[IDprzejazdu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SamochodyWFirmie]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SamochodyWFirmie](
	[IDsamochodu] [int] IDENTITY(1,1) NOT NULL,
	[IDmodelu] [int] NOT NULL,
	[Przebieg] [int] NULL,
 CONSTRAINT [PK_SamochodyWFirmie] PRIMARY KEY CLUSTERED 
(
	[IDsamochodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zlecenia]    Script Date: 5/28/2020 03:28:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zlecenia](
	[IDzlecenia] [int] IDENTITY(1,1) NOT NULL,
	[IDklienta] [int] NOT NULL,
	[MiejsceZaładunku] [nvarchar](100) NULL,
	[MiejsceRozładunku] [nvarchar](100) NULL,
	[DługośćTrasy] [float] NULL,
	[DataZłożenia] [datetime] NOT NULL,
	[TerminWykonania] [datetime] NULL,
	[MasaŁadunku] [int] NOT NULL,
	[Cena] [money] NULL,
 CONSTRAINT [PK_Zlecenia] PRIMARY KEY CLUSTERED 
(
	[IDzlecenia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ModeleSamochodów]  WITH CHECK ADD  CONSTRAINT [FK_ModeleSamochodów_KategorieSamochodów] FOREIGN KEY([Kategoria])
REFERENCES [dbo].[KategorieSamochodów] ([Nazwa])
GO
ALTER TABLE [dbo].[ModeleSamochodów] CHECK CONSTRAINT [FK_ModeleSamochodów_KategorieSamochodów]
GO
ALTER TABLE [dbo].[ModeleSamochodów]  WITH CHECK ADD  CONSTRAINT [FK_ModeleSamochodów_MarkiSamochodów] FOREIGN KEY([Marka])
REFERENCES [dbo].[MarkiSamochodów] ([Marka])
GO
ALTER TABLE [dbo].[ModeleSamochodów] CHECK CONSTRAINT [FK_ModeleSamochodów_MarkiSamochodów]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Pracownicy] FOREIGN KEY([IDpracownika])
REFERENCES [dbo].[Pracownicy] ([IDpracownika])
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Pracownicy]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_SamochodyWFirmie] FOREIGN KEY([IDsamochodu])
REFERENCES [dbo].[SamochodyWFirmie] ([IDsamochodu])
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_SamochodyWFirmie]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Zlecenia] FOREIGN KEY([IDzlecenia])
REFERENCES [dbo].[Zlecenia] ([IDzlecenia])
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Zlecenia]
GO
ALTER TABLE [dbo].[SamochodyWFirmie]  WITH CHECK ADD  CONSTRAINT [FK_SamochodyWFirmie_ModeleSamochodów] FOREIGN KEY([IDmodelu])
REFERENCES [dbo].[ModeleSamochodów] ([IDmodelu])
GO
ALTER TABLE [dbo].[SamochodyWFirmie] CHECK CONSTRAINT [FK_SamochodyWFirmie_ModeleSamochodów]
GO
ALTER TABLE [dbo].[Zlecenia]  WITH CHECK ADD  CONSTRAINT [FK_Zlecenia_Klienci] FOREIGN KEY([IDklienta])
REFERENCES [dbo].[Klienci] ([IDklienta])
GO
ALTER TABLE [dbo].[Zlecenia] CHECK CONSTRAINT [FK_Zlecenia_Klienci]
GO
ALTER TABLE [dbo].[Pracownicy]  WITH CHECK ADD  CONSTRAINT [CK_ValidAge] CHECK  ((datediff(year,[DataUrodzenia],getdate())>=(16)))
GO
ALTER TABLE [dbo].[Pracownicy] CHECK CONSTRAINT [CK_ValidAge]
GO
ALTER TABLE [dbo].[Pracownicy]  WITH CHECK ADD  CONSTRAINT [CK_ValidDate] CHECK  (([DataUrodzenia]<getdate()))
GO
ALTER TABLE [dbo].[Pracownicy] CHECK CONSTRAINT [CK_ValidDate]
GO
ALTER TABLE [dbo].[SamochodyWFirmie]  WITH CHECK ADD  CONSTRAINT [CK_UjemnyPrzebieg] CHECK  (([Przebieg]>=(0)))
GO
ALTER TABLE [dbo].[SamochodyWFirmie] CHECK CONSTRAINT [CK_UjemnyPrzebieg]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pracownicy', @level2type=N'CONSTRAINT',@level2name=N'CK_ValidDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Długość trasy opisana w kilometrach' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Zlecenia', @level2type=N'COLUMN',@level2name=N'DługośćTrasy'
GO
