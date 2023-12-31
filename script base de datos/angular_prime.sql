USE [master]
GO
/****** Object:  Database [AngularPrime]    Script Date: 17/07/2023 1:24:25 ******/
CREATE DATABASE [AngularPrime]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AngularPrime', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AngularPrime.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AngularPrime_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AngularPrime_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AngularPrime] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AngularPrime].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AngularPrime] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AngularPrime] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AngularPrime] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AngularPrime] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AngularPrime] SET ARITHABORT OFF 
GO
ALTER DATABASE [AngularPrime] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AngularPrime] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AngularPrime] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AngularPrime] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AngularPrime] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AngularPrime] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AngularPrime] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AngularPrime] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AngularPrime] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AngularPrime] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AngularPrime] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AngularPrime] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AngularPrime] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AngularPrime] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AngularPrime] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AngularPrime] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AngularPrime] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AngularPrime] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AngularPrime] SET  MULTI_USER 
GO
ALTER DATABASE [AngularPrime] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AngularPrime] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AngularPrime] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AngularPrime] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AngularPrime] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AngularPrime] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AngularPrime] SET QUERY_STORE = ON
GO
ALTER DATABASE [AngularPrime] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AngularPrime]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [int] NOT NULL,
	[ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clasificacion]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clasificacion](
	[idclasificacion] [int] NOT NULL,
	[clasificacion] [varchar](50) NULL,
 CONSTRAINT [PK_clasificacion] PRIMARY KEY CLUSTERED 
(
	[idclasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] NOT NULL,
	[Pais] [varchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pelicula](
	[Idpelicula] [int] NOT NULL,
	[Idtipopelicula] [int] NOT NULL,
	[pelicula] [varchar](50) NULL,
	[idclasificacion] [int] NOT NULL,
 CONSTRAINT [PK_Pelicula] PRIMARY KEY CLUSTERED 
(
	[Idpelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeliculasVistas]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeliculasVistas](
	[Idusuario] [int] NOT NULL,
	[Idpelicula] [int] NOT NULL,
	[IdtipoPelicula] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Identificacion]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Identificacion](
	[IdTipoIdentificacion] [int] NOT NULL,
	[TipoIdentificacion] [varchar](20) NULL,
 CONSTRAINT [PK_Tipo_Identificacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_pelicula]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_pelicula](
	[idtipopelicula] [int] NOT NULL,
	[categorizacion] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_pelicula] PRIMARY KEY CLUSTERED 
(
	[idtipopelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[IdTipousuario] [int] NOT NULL,
	[DenominacionUsuario] [nvarchar](150) NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdTipousuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/07/2023 1:24:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idusuario] [int] NOT NULL,
	[IdTipoUsuario] [int] NOT NULL,
	[IdTipoIdentificacion] [int] NOT NULL,
	[Identificacion] [nchar](10) NULL,
	[CorreoElectronico] [nchar](10) NULL,
	[Celular] [int] NULL,
	[IdPais] [int] NULL,
	[IdCiudad] [int] NULL,
	[Nombre_Usuario] [nvarchar](150) NULL,
	[RankingTipoPelicula] [nvarchar](100) NULL,
 CONSTRAINT [PK_Usuario_1] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_idtipoclasificacion_Pelicula] FOREIGN KEY([idclasificacion])
REFERENCES [dbo].[clasificacion] ([idclasificacion])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_idtipoclasificacion_Pelicula]
GO
ALTER TABLE [dbo].[Pelicula]  WITH CHECK ADD  CONSTRAINT [FK_tipopelicula_Pelicula] FOREIGN KEY([Idtipopelicula])
REFERENCES [dbo].[tipo_pelicula] ([idtipopelicula])
GO
ALTER TABLE [dbo].[Pelicula] CHECK CONSTRAINT [FK_tipopelicula_Pelicula]
GO
ALTER TABLE [dbo].[PeliculasVistas]  WITH CHECK ADD  CONSTRAINT [FK_idpelicula_PeliculasVistas] FOREIGN KEY([Idpelicula])
REFERENCES [dbo].[Pelicula] ([Idpelicula])
GO
ALTER TABLE [dbo].[PeliculasVistas] CHECK CONSTRAINT [FK_idpelicula_PeliculasVistas]
GO
ALTER TABLE [dbo].[PeliculasVistas]  WITH CHECK ADD  CONSTRAINT [FK_idtipopelicula_PeliculasVistas] FOREIGN KEY([IdtipoPelicula])
REFERENCES [dbo].[tipo_pelicula] ([idtipopelicula])
GO
ALTER TABLE [dbo].[PeliculasVistas] CHECK CONSTRAINT [FK_idtipopelicula_PeliculasVistas]
GO
ALTER TABLE [dbo].[PeliculasVistas]  WITH CHECK ADD  CONSTRAINT [FK_idusuario_PeliculasVistas] FOREIGN KEY([Idusuario])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[PeliculasVistas] CHECK CONSTRAINT [FK_idusuario_PeliculasVistas]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_idciudad] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_idciudad]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_idpais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_idpais]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_tipoidentificacion_usuario] FOREIGN KEY([IdTipoIdentificacion])
REFERENCES [dbo].[Tipo_Identificacion] ([IdTipoIdentificacion])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_tipoidentificacion_usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_TIPOUSUARIO] FOREIGN KEY([IdTipoUsuario])
REFERENCES [dbo].[Tipo_Usuario] ([IdTipousuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_TIPOUSUARIO]
GO
USE [master]
GO
ALTER DATABASE [AngularPrime] SET  READ_WRITE 
GO
