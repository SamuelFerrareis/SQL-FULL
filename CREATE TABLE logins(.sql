CREATE TABLE logins(
idUsuario INT IDENTITY(1,1) PRIMARY KEY,
loginUsuario NVARCHAR(15) UNIQUE,
senhaUsuario VARBINARY(256)
)

INSERT INTO logins (loginUsuario, senhaUsuario) VALUES
('Samuel', CONVERT(VARBINARY(256),pwdencrypt('123456'))),
('Nicolas Mel', CONVERT(VARBINARY(256),pwdencrypt('654321'))),
GO

SELECT * FROM logins;