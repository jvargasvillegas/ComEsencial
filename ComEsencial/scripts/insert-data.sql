--USE [ComEsencial]
--GO

SET NOCOUNT ON


DELETE [dbo].[Task]
DELETE [dbo].[Link]
DELETE [dbo].[Project]
DELETE [dbo].[Product]
DELETE [dbo].[Opportunity]
DELETE [dbo].[Client]
DELETE [dbo].[OpportunityInput]
DELETE [dbo].[Campaign]

BEGIN --INSERT INDUSTRIES
	DELETE dbo.Industry

	INSERT INTO dbo.Industry ([Name]) VALUES ('Automotriz')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Banca y Finanzas')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Cámaras Costarricenses')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Centros Comerciales')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Educación')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Entretenimiento')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Laboratorios y ciencia')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Mercadeo y comunicación')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Moda')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Salud')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Periodismo')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Servicios Salud')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Súpermercado')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Ventas minoristas')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Restaurantes')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Servicios de distribuición')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Tecnología')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Turismo')
	INSERT INTO dbo.Industry ([Name]) VALUES ('Otros')

END

BEGIN --Insert OpportunityInput
	DELETE dbo.OpportunityInput
	INSERT INTO [dbo].[OpportunityInput] ([Name]) VALUES ('Referencia')
	INSERT INTO [dbo].[OpportunityInput] ([Name]) VALUES ('SitioWeb')
	INSERT INTO [dbo].[OpportunityInput] ([Name]) VALUES ('Instagram')
	INSERT INTO [dbo].[OpportunityInput] ([Name]) VALUES ('LinkedIn')
	INSERT INTO [dbo].[OpportunityInput] ([Name]) VALUES ('Facebook')
END

BEGIN --INSERT PRODUCTS
	DELETE dbo.Product
	INSERT INTO [dbo].[Product] ([Name], [Description], [ImagePath]) VALUES ('Gestión de Prensa', 'Estrategia para la publicación de notas periodistas en medios','gestionprensa.png')
	INSERT INTO [dbo].[Product] ([Name], [Description], [ImagePath]) VALUES ('Redacción de Materiales', 'Todo tipo de redacción de materiales, tanto internos como externos','redaccionmateriales.png')
	INSERT INTO [dbo].[Product] ([Name], [Description], [ImagePath]) VALUES ('Estrategías de comunicación', 'Estrategías para alcanzar el público correcto con un mensaje atinado','estrategiacomunicacion.png')
	INSERT INTO [dbo].[Product] ([Name], [Description], [ImagePath]) VALUES ('Redes sociales', 'Comunicación interactiva y asertiva en redes sociales','redessociales.png')
END

BEGIN --INSERT CLIENTS

BEGIN -- Manejo de industrias
	DECLARE @Automotriz UNIQUEIDENTIFIER
	,@BancaFinanzas UNIQUEIDENTIFIER
	,@CamarasCostarricenses UNIQUEIDENTIFIER
	,@CentrosComerciales UNIQUEIDENTIFIER
	,@Educacion UNIQUEIDENTIFIER
	,@Entretenimiento UNIQUEIDENTIFIER
	,@LaboratoriosCiencia UNIQUEIDENTIFIER
	,@MercadeoComunicacion UNIQUEIDENTIFIER
	,@Moda UNIQUEIDENTIFIER
	,@Salud UNIQUEIDENTIFIER
	,@Periodismo UNIQUEIDENTIFIER
	,@ServiciosSalud UNIQUEIDENTIFIER
	,@Supermercado UNIQUEIDENTIFIER
	,@VentasMinoristas UNIQUEIDENTIFIER
	,@Restaurantes UNIQUEIDENTIFIER
	,@ServiciosDistribuicion UNIQUEIDENTIFIER
	,@Tecnologia UNIQUEIDENTIFIER
	,@Turismo UNIQUEIDENTIFIER
	,@Otros UNIQUEIDENTIFIER

	SELECT @Automotriz = IndustryId FROM dbo.Industry WHERE [NAME] = 'Automotriz'
	SELECT @BancaFinanzas = IndustryId FROM dbo.Industry WHERE [NAME] = 'Banca y Finanzas'
	SELECT @CamarasCostarricenses = IndustryId FROM dbo.Industry WHERE [NAME] = 'Cámaras Costarricenses'
	SELECT @CentrosComerciales = IndustryId FROM dbo.Industry WHERE [NAME] = 'Centros Comerciales'
	SELECT @Educacion = IndustryId FROM dbo.Industry WHERE [NAME] = 'Educación'
	SELECT @Entretenimiento = IndustryId FROM dbo.Industry WHERE [NAME] = 'Entretenimiento'
	SELECT @LaboratoriosCiencia = IndustryId FROM dbo.Industry WHERE [NAME] = 'Laboratorios y ciencia'
	SELECT @MercadeoComunicacion = IndustryId FROM dbo.Industry WHERE [NAME] = 'Mercadeo y comunicación'
	SELECT @Moda = IndustryId FROM dbo.Industry WHERE [NAME] = 'Moda'
	SELECT @Salud = IndustryId FROM dbo.Industry WHERE [NAME] = 'Salud'
	SELECT @Tecnologia = IndustryId FROM dbo.Industry WHERE [NAME] = 'Tecnología'
	SELECT @Periodismo = IndustryId FROM dbo.Industry WHERE [NAME] = 'Periodismo'
	SELECT @ServiciosSalud = IndustryId FROM dbo.Industry WHERE [NAME] = 'Servicios Salud'
	SELECT @Supermercado = IndustryId FROM dbo.Industry WHERE [NAME] = 'Súpermercado'
	SELECT @VentasMinoristas = IndustryId FROM dbo.Industry WHERE [NAME] = 'Ventas minoristas'
	SELECT @Restaurantes = IndustryId FROM dbo.Industry WHERE [NAME] = 'Restaurantes'
	SELECT @ServiciosDistribuicion = IndustryId FROM dbo.Industry WHERE [NAME] = 'Servicios de distribuición'
	SELECT @Turismo = IndustryId FROM dbo.Industry WHERE [NAME] = 'Turismo'
	SELECT @Otros = IndustryId FROM dbo.Industry WHERE [NAME] = 'Otros'


INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@BancaFinanzas,'(506) 8726-3880','BAC CREDOMATIC','Fernando Orozco','baccredomatic.png',0,1,NULL,NULL,NULL,'Gerente de Mercadeo','forozco@baccredomatic.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@CentrosComerciales,'(506) 8335-1387','Terramall','Adriana Gutierrez','terramall.png',0,1,NULL,NULL,NULL,'Gerente','aguitierrez@terramall.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@LaboratoriosCiencia,'(506) 8392-0099','Zepol','Francisco Ramirez','zepol.png',0,1,NULL,NULL,NULL,'Gerente Financiero','framirez@zepol.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Educacion,'(506) 8721-1399','Grupo Mentora Progrentis','Gustavo Marin','grupomentora.png',0,1,NULL,NULL,NULL,'Asistente de Ventas','gmarin@grupomentora.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@CamarasCostarricenses,'(506) 8721-5545','CACIA','Francisco Ramirez','cacia.png',0,1,NULL,NULL,NULL,'Gerente Financiero','framirez@cacia.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@ServiciosDistribuicion,'(506) 8721-2274','Grameen Costa Rica','Fernando Bermudez','grameen.png',0,1,NULL,NULL,NULL,'Gerente de Mercadeo','fbermudez@grameencr.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@VentasMinoristas,'(506) 8962-8331','El Mercadito','Jose Ramirez','elmercadito.png',0,1,NULL,NULL,NULL,'Supervisor Administrativo','jramirez@elmercadito.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@VentasMinoristas,'(506) 8962-5388','Runway Costa Rica','Francisco Britton','generico.png',0,1,NULL,NULL,NULL,'Brand Manager','fbritton@runwaycr.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Tecnologia,'(506) 8962-5399','Simplemente Lisa','Lisa Garrett','simplementelisa.png',0,1,NULL,NULL,NULL,'Promotora','lgarret@simplementelisa.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Periodismo,'(506) 8962-7399','Grupo Nación','Randall Fonseca','gruponacion.png',0,1,NULL,NULL,NULL,'Gerente Comercial','rfonseca@gruponacion.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Restaurantes,'(506) 8962-5399','RostiPollos','Natalie Jiménez','rostipollos.png',0,1,NULL,NULL,NULL,'Analista de Ventas','njimenez@rostipollos.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Supermercado,'(506) 8962-6399','Automercado','Catalina Bonilla','automercado.png',0,1,NULL,NULL,NULL,'Gerente','cbonilla@automercado.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Turismo,'(506) 8962-6399','Hotel Wyndham','Alejandra Ramírez','wyndham.png',0,1,NULL,NULL,NULL,'Analista de Ventas','aramirez@wyndham.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Turismo,'(506) 8962-6499','Hotel San Jos� Palacio','Jennifer Calvo','barcelo.png',0,1,NULL,NULL,NULL,'Investigadora de Mercado','jcalvo@hotelsjpalacio.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@MercadeoComunicacion,'(506) 8962-6499','Consulmerc','Marcela Campos','consulmerc.png',0,1,NULL,NULL,NULL,'Vendedora','mcampos@consulmerc.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@ServiciosDistribuicion,'(506) 8962-6393','Coca Cola','Manfred Víquez','cocacola.png',0,1,NULL,NULL,NULL,'Supervisor de Marketing','mviquez@cocacola.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Restaurantes,'(506) 8962-6393','Pollos del Monte','Julian Barrantes','pollosdelmonte.png',0,1,NULL,NULL,NULL,'Subgerente','jbarrantes@pollosdelmonte.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Restaurantes,'(506) 8962-8393','Ili Vanilli','Ileana Velazquez','ilivanilli.png',0,1,NULL,NULL,NULL,'Gerente de Mercadeo','ivelazquez@ilivanilli.com')

INSERT INTO [dbo].[Client]([IndustryId],[PhoneNumber],[Name],[Contact],[Logo],[Prospect],[State],[Facebook],[Instagram],[LinkedIn],[Description],[Email])
VALUES (@Educacion,'(506) 8962-3833','Pan-American School','Juan de la Cruz','panamericanschool.png',0,1,NULL,NULL,NULL,'Supervisor de Marketing','jcruz@panamericanschool.com')
END

END

BEGIN -- INSERT PROJECTS
DECLARE @NumberOfProjects INT = 35

WHILE(@NumberOfProjects > 0)
BEGIN

	DECLARE @Client NVARCHAR(200)
	, @Product NVARCHAR(200)
	, @ClientId UNIQUEIDENTIFIER
	, @ProductId UNIQUEIDENTIFIER

	SELECT TOP 1 @Product = [Name], @ProductId = ProductId FROM [dbo].[Product] ORDER BY NEWID()
	SELECT TOP 1 @Client = [Name], @ClientId = ClientId FROM [dbo].[Client] ORDER BY NEWID()

	INSERT INTO [dbo].[Project] ([Name]
		  ,[ClientId]
		  ,[ProductId]
		  ,[StartDate]
		  ,[EndDate]
		  ,[InvoicedAmount]
		  ,[Cost]
		  ,[QuotedHours]
		  ,[WorkingHours]
		  ,[Description]
		  ,[State]) 
	VALUES
		 (
		   (@Product + ' - ' + @Client)
		 , @ClientId
		 , @ProductId
		 , GETDATE()
		 , DATEADD(DAY,10,GETDATE())
		 , (SELECT FLOOR(RAND()*(10-5+1)+5)*100+300)
		 , (SELECT FLOOR(RAND()*(10-5+1)+5)*70+240)
		 , (SELECT FLOOR(RAND()*(10-5+1)+5)*10)
		 , (SELECT FLOOR(RAND()*(10-5+1)+5)*10)
		 , ('Descripción' + ' | ' + @Product + ' - ' + @Client)
		 , (SELECT CASE WHEN RAND() > 0.5 THEN 1 ELSE 0 END)
	 )

	 SET @NumberOfProjects = @NumberOfProjects - 1
 END
END

 BEGIN -- INSERT Campaigns
  INSERT INTO [dbo].[Campaign] VALUES(NEWID(), 'Campaña Facebook 2021', 'Compra de un servicio publicitario de Facebook', 'Captura por Facebook', DATEADD(DAY, -10, GETDATE()), DATEADD(DAY, 36, GETDATE()), 1)
  INSERT INTO [dbo].[Campaign] VALUES(NEWID(), 'Campaña Instagram 2021', 'Compra de un servicio publicitario de Instagram', 'Captura por Instagram', DATEADD(DAY, -18, GETDATE()), DATEADD(DAY, 53, GETDATE()), 1)
  INSERT INTO [dbo].[Campaign] VALUES(NEWID(), 'Campaña clientes inactivos', 'Captura y reactivación de clientes inactivos', 'Captura por llamada telefónica', DATEADD(DAY, -23, GETDATE()), DATEADD(DAY, 43, GETDATE()), 1)
  INSERT INTO [dbo].[Campaign] VALUES(NEWID(), 'Campaña LinkedIn 2021', 'Compra de un servicio publicitario de LinkedIn', 'Captura por LinkedIn', DATEADD(DAY, -5, GETDATE()), DATEADD(DAY, 33, GETDATE()), 1)
  INSERT INTO [dbo].[Campaign] VALUES(NEWID(), 'Campaña e-mail masivo 2021', 'Correo electrónico masivo a base de datos comprada', 'Captura por correo', DATEADD(DAY, -3, GETDATE()), DATEADD(DAY, 33, GETDATE()), 1) 
 END

 BEGIN -- INSERT Tasks
		DECLARE @NumberOfTasks INT = 60

		WHILE(@NumberOfTasks > 0)
		BEGIN
			INSERT INTO [dbo].[Task] 
			(
				   [Title]		
				  ,[ProjectId]
				  ,[Status]
			  ) 
			VALUES
				 (
				   ('Tarea ' + CAST(@NumberOfTasks AS NVARCHAR(5)))
				 , (SELECT TOP 1 ProjectId FROM [dbo].[Project] where [state] = 1 ORDER BY NEWID())
				 , (SELECT CASE WHEN RAND() > 0.5 THEN 1 ELSE 0 END)
			 )

			 SET @NumberOfTasks = @NumberOfTasks - 1

		END
END


BEGIN -- INSERT OPPORTUNITIES
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (NULL), 'Proyecto sin oportunidad por asociar',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (SELECT TOP 1 CampaignId FROM Campaign ORDER BY NEWID()), 'Redacción de Materiales 2021',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (SELECT TOP 1 CampaignId FROM Campaign ORDER BY NEWID()), 'Gestión de prensa - nueva línea de productos',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (SELECT TOP 1 CampaignId FROM Campaign ORDER BY NEWID()), 'Redacción del sitio web',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (SELECT TOP 1 CampaignId FROM Campaign ORDER BY NEWID()), 'Catálogo para Expomovil 2021, Redacción',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (SELECT TOP 1 CampaignId FROM Campaign ORDER BY NEWID()), 'Gestión de prensa - Medidas COVID-19',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
	INSERT INTO Opportunity VALUES(NEWID(), (SELECT TOP 1 ClientId FROM Client ORDER BY NEWID()), (SELECT TOP 1 CampaignId FROM Campaign ORDER BY NEWID()), 'Redacción de materiales | RRHHH',  (SELECT TOP 1 OpportunityInputId FROM OpportunityInput ORDER BY NEWID()), 1)
END