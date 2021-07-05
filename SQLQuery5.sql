--Creacion de una Auditoria

--Creacion de Cuentas de Usuario

--Ahora Crearemos, Modificaremos y Eliminaremos algunos Usuarios

Create Login LogUsuarioA with Password = 'Conejo_1234'

Create Login LogUsuarioB with Password = 'Conejo_2345'

Create Login LogUsuarioC with Password = 'Conejo_3456'

Create Login LogUsuarioD with Password = 'Conejo_4567'

Create Login LogUsuarioE with Password = 'Conejo_5678'

Create Login LogUsuarioF with Password = 'Conejo_6789'

------------------------------

Create User Sword01 for Login LogUsuarioA with Default_Schema=dbo

Create User Bow01 for Login LogUsuarioB with Default_Schema=dbo

Create User Lance01 for Login LogUsuarioC with Default_Schema=dbo

Create User Shield01 for Login LogUsuarioD with Default_Schema=dbo

Create User Whip01 for Login LogUsuarioE with Default_Schema=dbo

Create User Claw01 for Login LogUsuarioF with Default_Schema=dbo

--Modificacion

ALTER LOGIN LogUsuarioF ENABLE;

ALTER LOGIN LogUsuarioF WITH PASSWORD = '<Fist105>' OLD_PASSWORD = '<Conejo_6789>'

-- Delete

Drop Login LogUsuarioE


--Schema

USE [master]
GO

/****** Object:  Audit [Audit-20210705-220726]    Script Date: 7/5/2021 10:08:27 PM ******/
CREATE SERVER AUDIT [Audit-20210705-220726]
TO FILE 
(	FILEPATH = N'C:\BDII 3T1 IC\'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE, AUDIT_GUID = '7c26802e-f27a-4ffc-840e-671e2ef05777')
ALTER SERVER AUDIT [Audit-20210705-220726] WITH (STATE = ON)
GO


-- Database

USE [master]
GO

/****** Object:  Audit [Auditoria_Usurios2]    Script Date: 7/5/2021 10:08:22 PM ******/
CREATE SERVER AUDIT [Auditoria_Usurios2]
TO FILE 
(	FILEPATH = N'C:\BDII 3T1 IC\'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE, AUDIT_GUID = '7d55bc6f-4edb-4328-961c-b373430e2e44')
ALTER SERVER AUDIT [Auditoria_Usurios2] WITH (STATE = ON)
GO


-- Server

USE [master]
GO

/****** Object:  Audit [Auditoria_Usuarios]    Script Date: 7/5/2021 10:08:14 PM ******/
CREATE SERVER AUDIT [Auditoria_Usuarios]
TO FILE 
(	FILEPATH = N'C:\BDII 3T1 IC\'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE, AUDIT_GUID = 'ba6c71b1-f515-45e6-90d1-304086b2cb08')
ALTER SERVER AUDIT [Auditoria_Usuarios] WITH (STATE = ON)
GO






