USE [Bujakwind]
GO
INSERT [dbo].[MarkiSamochodów] ([Marka]) VALUES (N'Ford')
INSERT [dbo].[MarkiSamochodów] ([Marka]) VALUES (N'Opel')
INSERT [dbo].[MarkiSamochodów] ([Marka]) VALUES (N'Renault')
INSERT [dbo].[MarkiSamochodów] ([Marka]) VALUES (N'Scania')
INSERT [dbo].[MarkiSamochodów] ([Marka]) VALUES (N'Volkswagen')
INSERT [dbo].[MarkiSamochodów] ([Marka]) VALUES (N'Volvo')
INSERT [dbo].[KategorieSamochodów] ([Nazwa]) VALUES (N'N1')
INSERT [dbo].[KategorieSamochodów] ([Nazwa]) VALUES (N'N2')
INSERT [dbo].[KategorieSamochodów] ([Nazwa]) VALUES (N'N3')
SET IDENTITY_INSERT [dbo].[ModeleSamochodów] ON 

INSERT [dbo].[ModeleSamochodów] ([IDmodelu], [Kategoria], [Marka], [Model], [MaksymalnaMasaŁadunku]) VALUES (1, N'N3', N'Scania', N'Urban Range', 12000)
INSERT [dbo].[ModeleSamochodów] ([IDmodelu], [Kategoria], [Marka], [Model], [MaksymalnaMasaŁadunku]) VALUES (2, N'N3', N'Ford', N'F-Max', 13000)
INSERT [dbo].[ModeleSamochodów] ([IDmodelu], [Kategoria], [Marka], [Model], [MaksymalnaMasaŁadunku]) VALUES (4, N'N3', N'Volvo', N' FH LNG', 13500)
INSERT [dbo].[ModeleSamochodów] ([IDmodelu], [Kategoria], [Marka], [Model], [MaksymalnaMasaŁadunku]) VALUES (5, N'N1', N'Opel', N'Vivaro', 3000)
INSERT [dbo].[ModeleSamochodów] ([IDmodelu], [Kategoria], [Marka], [Model], [MaksymalnaMasaŁadunku]) VALUES (6, N'N1', N'Volkswagen', N'Caddy', 3100)
INSERT [dbo].[ModeleSamochodów] ([IDmodelu], [Kategoria], [Marka], [Model], [MaksymalnaMasaŁadunku]) VALUES (7, N'N2', N'Volvo', N'FL 512', 6100)
SET IDENTITY_INSERT [dbo].[ModeleSamochodów] OFF
SET IDENTITY_INSERT [dbo].[SamochodyWFirmie] ON 

INSERT [dbo].[SamochodyWFirmie] ([IDsamochodu], [IDmodelu], [Przebieg]) VALUES (1, 1, 30000)
INSERT [dbo].[SamochodyWFirmie] ([IDsamochodu], [IDmodelu], [Przebieg]) VALUES (2, 2, 89000)
INSERT [dbo].[SamochodyWFirmie] ([IDsamochodu], [IDmodelu], [Przebieg]) VALUES (4, 4, 67888)
SET IDENTITY_INSERT [dbo].[SamochodyWFirmie] OFF
SET IDENTITY_INSERT [dbo].[Pracownicy] ON 

INSERT [dbo].[Pracownicy] ([IDpracownika], [Imię], [Nazwisko], [DataUrodzenia], [Adres], [Miasto], [Region], [KodPocztowy], [Kraj], [TelefonDomowy], [TelefonKomórkowy]) VALUES (7, N'Janusz', N'Cienki', CAST(0xE1D60A00 AS Date), N'Ul. Cienka 30/38', N'Cienkowo', N'Śląsk', N'78-897', N'Polska', 678456876, 456876456)
INSERT [dbo].[Pracownicy] ([IDpracownika], [Imię], [Nazwisko], [DataUrodzenia], [Adres], [Miasto], [Region], [KodPocztowy], [Kraj], [TelefonDomowy], [TelefonKomórkowy]) VALUES (8, N'Marcin', N'Budzyński', CAST(0x5F050B00 AS Date), N'ul. Budzyńska 21/43', N'Budzyniowo', N'Śląsk', N'78-980', N'Polska', 567987567, 678456876)
INSERT [dbo].[Pracownicy] ([IDpracownika], [Imię], [Nazwisko], [DataUrodzenia], [Adres], [Miasto], [Region], [KodPocztowy], [Kraj], [TelefonDomowy], [TelefonKomórkowy]) VALUES (9, N'Mateusz', N'Kaźmierski', CAST(0x3FF60A00 AS Date), N'Ul. Kazimierza 12/89', N'Kazimierz Dolny', N'Śląsk', N'67-678', N'Polska', 456876456, 654776567)
SET IDENTITY_INSERT [dbo].[Pracownicy] OFF
SET IDENTITY_INSERT [dbo].[Klienci] ON 

INSERT [dbo].[Klienci] ([IDklienta], [Nazwa], [Adres], [Miasto], [Region], [Kraj], [KodPocztowy], [TelefonKontaktowy]) VALUES (1, N'Bonk Auto-Parts', N'ul. Gdańska 30', N'Gdańsk', NULL, N'Polska', N'98-100', 678456987)
INSERT [dbo].[Klienci] ([IDklienta], [Nazwa], [Adres], [Miasto], [Region], [Kraj], [KodPocztowy], [TelefonKontaktowy]) VALUES (2, N'Marekpol', N'ul. Markowa 9', N'Markowo', N'Śląsk', N'Polska', N'78-329', 678987567)
SET IDENTITY_INSERT [dbo].[Klienci] OFF
SET IDENTITY_INSERT [dbo].[Zlecenia] ON 

INSERT [dbo].[Zlecenia] ([IDzlecenia], [IDklienta], [MiejsceZaładunku], [MiejsceRozładunku], [DługośćTrasy], [DataZłożenia], [TerminWykonania], [MasaŁadunku], [Cena]) VALUES (1, 1, N'Kazimierz Dolny', N'Gdańsk', 120, CAST(0x0000ABB000000000 AS DateTime), CAST(0x0000AC1200000000 AS DateTime), 10000, 13500.0000)
INSERT [dbo].[Zlecenia] ([IDzlecenia], [IDklienta], [MiejsceZaładunku], [MiejsceRozładunku], [DługośćTrasy], [DataZłożenia], [TerminWykonania], [MasaŁadunku], [Cena]) VALUES (3, 2, N'Marcinkowo', N'Sosnowiec', 12, CAST(0x0000AB5600000000 AS DateTime), CAST(0x0000AC3500000000 AS DateTime), 11300, 21300.0000)
SET IDENTITY_INSERT [dbo].[Zlecenia] OFF
SET IDENTITY_INSERT [dbo].[Przejazdy] ON 

INSERT [dbo].[Przejazdy] ([IDprzejazdu], [IDpracownika], [IDsamochodu], [IDzlecenia], [DataWyjazdu], [DataWykonania], [Wydatki]) VALUES (3, 7, 4, 1, CAST(0x0000ABB600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[Przejazdy] ([IDprzejazdu], [IDpracownika], [IDsamochodu], [IDzlecenia], [DataWyjazdu], [DataWykonania], [Wydatki]) VALUES (5, 8, 1, 3, CAST(0x0000ABF400000000 AS DateTime), CAST(0x0000ABF500000000 AS DateTime), 1100.0000)
SET IDENTITY_INSERT [dbo].[Przejazdy] OFF
