USE [master]
GO
/****** Object:  Database [appuie_pédagogique]    Script Date: 5/24/2019 11:44:16 AM ******/
CREATE DATABASE [appuie_pédagogique]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'appuie_pédagogique', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\appuie_pédagogique.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'appuie_pédagogique_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\appuie_pédagogique_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [appuie_pédagogique] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [appuie_pédagogique].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [appuie_pédagogique] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET ARITHABORT OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [appuie_pédagogique] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [appuie_pédagogique] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [appuie_pédagogique] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET  ENABLE_BROKER 
GO
ALTER DATABASE [appuie_pédagogique] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [appuie_pédagogique] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET RECOVERY FULL 
GO
ALTER DATABASE [appuie_pédagogique] SET  MULTI_USER 
GO
ALTER DATABASE [appuie_pédagogique] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [appuie_pédagogique] SET DB_CHAINING OFF 
GO
ALTER DATABASE [appuie_pédagogique] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [appuie_pédagogique] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'appuie_pédagogique', N'ON'
GO
USE [appuie_pédagogique]
GO
/****** Object:  Table [dbo].[Commentaires]    Script Date: 5/24/2019 11:44:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Commentaires](
	[numCommt] [int] NOT NULL,
	[dateCommt] [date] NULL,
	[texteCommt] [varchar](50) NULL,
	[etatCommt] [varchar](50) NULL,
	[codeDoc] [int] NULL,
	[logins] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[numCommt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 5/24/2019 11:44:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Documents](
	[codeDoc] [int] NOT NULL,
	[descriptionDoc] [varchar](50) NULL,
	[dossierDoc] [varchar](50) NULL,
	[dateEnvoi] [date] NULL,
	[etatDoc] [varchar](50) NULL,
	[codeTheme] [int] NULL,
	[logins] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codeDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Themes]    Script Date: 5/24/2019 11:44:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Themes](
	[codeTheme] [int] NOT NULL,
	[libelleTheme] [varchar](50) NULL,
	[descriptionTheme] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codeTheme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Utilisateurs]    Script Date: 5/24/2019 11:44:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Utilisateurs](
	[logins] [varchar](50) NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[motDePasse] [varchar](50) NULL,
	[roles] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[logins] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Commentaires]  WITH CHECK ADD FOREIGN KEY([codeDoc])
REFERENCES [dbo].[Documents] ([codeDoc])
GO
ALTER TABLE [dbo].[Commentaires]  WITH CHECK ADD FOREIGN KEY([logins])
REFERENCES [dbo].[Utilisateurs] ([logins])
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD FOREIGN KEY([codeTheme])
REFERENCES [dbo].[Themes] ([codeTheme])
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD FOREIGN KEY([logins])
REFERENCES [dbo].[Utilisateurs] ([logins])
GO
USE [master]
GO
ALTER DATABASE [appuie_pédagogique] SET  READ_WRITE 
GO
