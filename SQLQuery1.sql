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


--





