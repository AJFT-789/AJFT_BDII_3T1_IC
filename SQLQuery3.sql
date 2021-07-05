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


