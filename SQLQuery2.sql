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


