USE [Bujakwind]
GO
/****** Object:  StoredProcedure [dbo].[EdytujDaneKlienta_PoID]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EdytujDaneKlienta_PoID]
@IDklienta int,
@Nazwa nvarchar(100),
@Adres nvarchar(100),
@Miasto nvarchar(100),
@Region nvarchar(100),
@Kraj nvarchar(100),
@KodPocztowy nvarchar(100),
@TelefonKontaktowy integer,
@ChangeNazwa bit,
@ChangeAdres bit,
@ChangeMiasto bit,
@ChangeRegion bit,
@ChangeKraj bit,
@ChangeKodPocztowy bit,
@ChangeTelefonKontaktowy bit
AS
BEGIN
	SET NOCOUNT ON;

			IF ( @ChangeNazwa = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET Nazwa = @Nazwa
								  WHERE IDklienta = @IDklienta
		END
--------------------------------------------------------------------------------
		IF ( @ChangeAdres = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET Adres = @Adres
								  WHERE IDklienta = @IDklienta
		END
--------------------------------------------------------------------------------
		IF ( @ChangeMiasto = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET Miasto = @Miasto
								  WHERE IDklienta = @IDklienta
		END
--------------------------------------------------------------------------------
		IF ( @ChangeRegion = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET Region = @Region
								  WHERE IDklienta = @IDklienta
		 END
--------------------------------------------------------------------------------
		IF ( @ChangeKodPocztowy = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET KodPocztowy = @KodPocztowy
								  WHERE IDklienta = @IDklienta
		END
--------------------------------------------------------------------------------
		IF ( @ChangeKraj = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET Kraj = @Kraj
								  WHERE IDklienta = @IDklienta
		END
--------------------------------------------------------------------------------
		IF ( @ChangeTelefonKontaktowy = 1 ) 
		BEGIN
								  UPDATE dbo.Klienci
								  SET TelefonKontaktowy = @TelefonKontaktowy
								  WHERE IDklienta = @IDklienta
		END
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajKategorięSamochodu]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajKategorięSamochodu]
@Nazwa nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO KategorieSamochodów (Nazwa)
	VALUES (@Nazwa)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajKlienta]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajKlienta]
@Nazwa nvarchar(100),
@Adres nvarchar(100),
@Miasto nvarchar(100),
@Region nvarchar(100),
@Kraj nvarchar(100),
@KodPocztowy nvarchar(100),
@TelefonKontaktowy int
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Klienci (Nazwa, Adres, Miasto, Region, Kraj, KodPocztowy, TelefonKontaktowy)
	VALUES (@Nazwa, @Adres, @Miasto, @Region, @Kraj, @KodPocztowy, @TelefonKontaktowy)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajMarkęSamochodu]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajMarkęSamochodu]
@Marka nvarchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO MarkiSamochodów (Marka)
	VALUES (@Marka)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajModelSamochodu]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajModelSamochodu]
@Kategoria nvarchar(100),
@Marka nvarchar(100),
@Model nvarchar(100),
@MaksymalnaMasaŁadunku integer
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO ModeleSamochodów (Kategoria, Marka, Model, MaksymalnaMasaŁadunku)
	VALUES (@Kategoria, @Marka, @Model, @MaksymalnaMasaŁadunku)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajPracownika]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajPracownika]
@Imię nvarchar(100),
@Nazwisko nvarchar(100),
@DataUrodzenia date,
@Adres nvarchar(100),
@Miasto nvarchar(100),
@Region nvarchar(100),
@KodPocztowy nvarchar(100),
@Kraj nvarchar(100),
@TelefonDomowy int,
@TelefonKomórkowy int
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.Pracownicy (Imię, Nazwisko, DataUrodzenia, Adres, Miasto, Region, KodPocztowy, Kraj, TelefonDomowy, TelefonKomórkowy)
	VALUES (@Imię, @Nazwisko, @DataUrodzenia, @Adres, @Miasto, @Region, @KodPocztowy, @Kraj, @TelefonDomowy, @TelefonKomórkowy)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajPrzejazd]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajPrzejazd]
@IDpracownika int,
@IDsamochodu int,
@IDzlecenia int,
@DataWyjazdu datetime,
@DataWykonania datetime,
@Wydatki money
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO Przejazdy (IDpracownika, IDsamochodu, IDzlecenia, DataWyjazdu, DataWykonania, Wydatki)
	VALUES (@IDpracownika, @IDsamochodu, @IDzlecenia, @DataWyjazdu, @DataWykonania, @Wydatki)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajSamochódWFirmie]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajSamochódWFirmie]
@IDmodelu int,
@Przebieg int
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO SamochodyWFirmie (IDmodelu, Przebieg)
	VALUES (@IDmodelu, @Przebieg)
END

GO
/****** Object:  StoredProcedure [dbo].[spDodajZlecenie]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDodajZlecenie]
@MiejsceZaładunku nvarchar(100),
@MiejsceRozładunku nvarchar(100),
@DługośćTrasy float,
@DataZłożenia datetime,
@TerminWykonania datetime,
@MasaŁadunku int,
@Cena money
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Zlecenia (MiejsceZaładunku, MiejsceRozładunku, DługośćTrasy, DataZłożenia, TerminWykonania, MasaŁadunku, Cena)
	VALUES (@MiejsceZaładunku, @MiejsceRozładunku, @DługośćTrasy, @DataZłożenia, @TerminWykonania, @MasaŁadunku, @Cena)
END

GO
/****** Object:  StoredProcedure [dbo].[spEdytujDanePracownika_PoID]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEdytujDanePracownika_PoID]
@IDpracownika int,
@Imię nvarchar(100),
@Nazwisko nvarchar(100),
@DataUrodzenia date,
@Adres nvarchar(100),
@Miasto nvarchar(100),
@Region nvarchar(100),
@KodPocztowy nvarchar(100),
@Kraj nvarchar(100),
@TelefonDomowy int,
@TelefonKomórkowy int,
@ChangeImię bit,
@ChangeNazwisko bit,
@ChangeDataUrodzenia bit,
@ChangeAdres bit,
@ChangeMiasto bit,
@ChangeRegion bit,
@ChangeKodPocztowy bit,
@ChangeKraj bit,
@ChangeTelefonDomowy int,
@ChangeTelefonKomórkowy bit

AS
BEGIN
	SET NOCOUNT ON;

		IF ( @ChangeImię = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET Imię = @Imię
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeNazwisko = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET Nazwisko = @Nazwisko
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeDataUrodzenia = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET DataUrodzenia = @DataUrodzenia
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeAdres = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET Adres = @Adres
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeMiasto = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET Miasto = @Miasto
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeRegion = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET Region = @Region
								  WHERE IDpracownika = @IDpracownika
		 END
--------------------------------------------------------------------------------
		IF ( @ChangeKodPocztowy = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET KodPocztowy = @KodPocztowy
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeKraj = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET Kraj = @Kraj
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeTelefonDomowy = 1 ) 
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET TelefonDomowy = @TelefonDomowy
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
		IF ( @ChangeTelefonKomórkowy = 1 )
		BEGIN
								  UPDATE dbo.Pracownicy
								  SET TelefonKomórkowy = @TelefonKomórkowy
								  WHERE IDpracownika = @IDpracownika
		END
--------------------------------------------------------------------------------
END
GO
/****** Object:  StoredProcedure [dbo].[spOznaczPrzejazdJakoWykonany]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spOznaczPrzejazdJakoWykonany]
@IDprzejazdu int,
@DataWykonania datetime
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Przejazdy
	SET DataWyjazdu = @DataWykonania
	WHERE IDpracownika = @IDprzejazdu
END

GO
/****** Object:  StoredProcedure [dbo].[spPodglądPrzejazdów_PoIDpracownika]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spPodglądPrzejazdów_PoIDpracownika]
@IDpracownika int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM Przejazdy
	WHERE IDpracownika = @IDpracownika
END

GO
/****** Object:  StoredProcedure [dbo].[spPrzejazdyPracownika_PoID]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spPrzejazdyPracownika_PoID]
@IDpracownika int
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (
			   SELECT *
			   FROM Pracownicy
			   WHERE Pracownicy.IDpracownika = @IDpracownika
			   )
	BEGIN
		SELECT *
		FROM Przejazdy
		WHERE Przejazdy.IDpracownika = @IDpracownika
	END
END

GO
/****** Object:  StoredProcedure [dbo].[spZnajdźPracownika_PoID]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spZnajdźPracownika_PoID]
@ID int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM dbo.Pracownicy
	WHERE IDpracownika = @ID
END

GO
/****** Object:  StoredProcedure [dbo].[spZwróćDaneWszystkichPracowników]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spZwróćDaneWszystkichPracowników]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	FROM Pracownicy
END

GO
/****** Object:  StoredProcedure [dbo].[ZwróćDaneWszystkichKlientów]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ZwróćDaneWszystkichKlientów]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM Klienci
END

GO
/****** Object:  StoredProcedure [dbo].[ZwróćDaneWszystkichZleceń]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ZwróćDaneWszystkichZleceń]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM Zlecenia
END

GO
/****** Object:  StoredProcedure [dbo].[ZwróćWszystkieKategorieSamochodów]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ZwróćWszystkieKategorieSamochodów]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM KategorieSamochodów
END

GO
/****** Object:  StoredProcedure [dbo].[ZwróćWszystkieMarkiSamochodów]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ZwróćWszystkieMarkiSamochodów]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM MarkiSamochodów
END

GO
/****** Object:  StoredProcedure [dbo].[ZwróćWszystkieModeleSamochodów]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ZwróćWszystkieModeleSamochodów]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM ModeleSamochodów
END

GO
/****** Object:  StoredProcedure [dbo].[ZwróćWszystkieSamochodyWFirmie]    Script Date: 5/28/2020 03:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ZwróćWszystkieSamochodyWFirmie]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM SamochodyWFirmie
END

GO
