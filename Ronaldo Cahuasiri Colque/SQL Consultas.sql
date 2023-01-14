
-- Datos de Usuarios user: sis457 pass:123 (Encriptado)
-- Datos de Usuarios user: admin pass:123 (Encriptado)

CREATE DATABASE [FinalSis457Rcc]
go  
-- Base de datos Creado
USE [FinalSis457Rcc]
GO
CREATE LOGIN [usrFinal] WITH PASSWORD=N'12345678',
	DEFAULT_DATABASE=[FinalSis457Rcc],
	CHECK_EXPIRATION=OFF,
	CHECK_POLICY=ON
GO
USE [FinalSis457Rcc]
GO 
CREATE USER [usrFinal] FOR LOGIN [usrFinal]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrFinal]
GO

CREATE TABLE Serie (
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(250) NOT NULL,
	sinopsis VARCHAR(5000) NOT NULL,
	director VARCHAR(100) NOT NULL,
	duracion INT NOT NULL,
	fechaEstreno DATETIME NOT NULL,
	usuarioRegistro VARCHAR(12) NOT NULL,
	registroActivo BIT NULL DEFAULT 1
)
go

INSERT INTO Serie (titulo, sinopsis, director,duracion,fechaEstreno,usuarioRegistro,registroActivo) 
VALUES 
('The Peripheral','Atrapada en un pequeño pueblo de los Apalaches, jugar videojuegos es la única manera que una joven tiene para escapar de la rutina. Es tan buena jugadora, que una empresa le envía un nuevo sistema de videojuegos para que lo pruebe, pero tiene una sorpresa. Desbloquea sus sueños de encontrar un propósito, romance y glamour en lo que parece un juego, poniéndola a ella y su familia en peligro.',
'Scott B. Smith',2,'2005-12-18','admin',1),
('Anatomía de Grey','La vida de Meredith Grey no es nada fácil. Intenta tomar las riendas de su vida, aunque su trabajo sea de esos que te hacen la vida imposible. Meredith es una cirujana interna de primer año en el Hospital Grace de Seattle, el programa de prácticas más duro de la Facultad de Medicina de Harvard. Y ella lo va a comprobar. Pero no estará sola. Un elenco de compañeros de promoción tendrán que superar la misma prueba. Ahora están en el mundo real, son doctores del hospital. ',
'Shonda Rhimes',2,'2010-12-18','admin',1),
('El soldado de Dios','Sam Childers creció con un padre violento y una madre muy devota, quizá por ello su vida es una contradicción. Adicto a las drogas y a las mujeres, acabó convirtiéndose en un motorista narcotraficante. Algunos años después, Sam se incorpora al ejército y forma parte de un equipo cuya misión consiste en recorrer las zonas más peligrosas de Sudán y de Uganda para rescatar a los niños huérfanos y a los niños-soldado.',
'Marc Forster',1,'2011-12-18','admin',1)
GO

CREATE TABLE Usuario (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  usuario VARCHAR(12) NOT NULL,
  clave VARCHAR(250) NOT NULL,
  rol VARCHAR(20) NOT NULL,
  registroActivo BIT NULL DEFAULT 1
);
GO
INSERT INTO Usuario (usuario, clave, rol,registroActivo) VALUES ('admin','TMG83MKlK2M6qAW/ay8vTQ==','admin',1)
INSERT INTO Usuario (usuario, clave, rol,registroActivo) VALUES ('sis457','TMG83MKlK2M6qAW/ay8vTQ==','user',1)
GO