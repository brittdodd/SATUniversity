IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
ALTER TABLE [dbo].[Students] DROP CONSTRAINT IF EXISTS [FK_Students_StudentStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClasses] DROP CONSTRAINT IF EXISTS [FK_ScheduledClasses_ScheduledClassStatuses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ScheduledClasses]') AND type in (N'U'))
ALTER TABLE [dbo].[ScheduledClasses] DROP CONSTRAINT IF EXISTS [FK_ScheduledClasses_Courses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_Students]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollments]') AND type in (N'U'))
ALTER TABLE [dbo].[Enrollments] DROP CONSTRAINT IF EXISTS [FK_Enrollments_ScheduledClasses]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT IF EXISTS [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT IF EXISTS [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP INDEX IF EXISTS [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[StudentStatuses]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[Students]
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClassStatuses]
GO
/****** Object:  Table [dbo].[ScheduledClasses]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[ScheduledClasses]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[Enrollments]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[Courses]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Database [SAT]    Script Date: 11/3/2022 3:12:59 PM ******/
DROP DATABASE IF EXISTS [SAT]
GO
/****** Object:  Database [SAT]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE DATABASE [SAT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SAT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SAT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SAT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SAT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SAT] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SAT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SAT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SAT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SAT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SAT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SAT] SET ARITHABORT OFF 
GO
ALTER DATABASE [SAT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SAT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SAT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SAT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SAT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SAT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SAT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SAT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SAT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SAT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SAT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SAT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SAT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SAT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SAT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SAT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SAT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SAT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SAT] SET  MULTI_USER 
GO
ALTER DATABASE [SAT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SAT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SAT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SAT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SAT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SAT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SAT] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[CourseDescription] [varchar](max) NOT NULL,
	[CreditHours] [tinyint] NOT NULL,
	[Curriculum] [varchar](250) NULL,
	[Notes] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ScheduledClassId] [int] NOT NULL,
	[EnrollmentDate] [date] NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduledClasses]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledClasses](
	[ScheduledClassId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[InstructorName] [varchar](40) NOT NULL,
	[Location] [varchar](20) NOT NULL,
	[SCSID] [int] NOT NULL,
 CONSTRAINT [PK_ScheduledClasses] PRIMARY KEY CLUSTERED 
(
	[ScheduledClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduledClassStatuses]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledClassStatuses](
	[SCSID] [int] IDENTITY(1,1) NOT NULL,
	[SCSName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ScheduledClassStatuses] PRIMARY KEY CLUSTERED 
(
	[SCSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[House] [varchar](15) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](25) NULL,
	[State] [char](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[Phone] [varchar](13) NULL,
	[Email] [varchar](60) NOT NULL,
	[PhotoUrl] [varchar](100) NULL,
	[SSID] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentStatuses]    Script Date: 11/3/2022 3:12:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentStatuses](
	[SSID] [int] IDENTITY(1,1) NOT NULL,
	[SSName] [varchar](30) NOT NULL,
	[SSDescription] [varchar](250) NULL,
 CONSTRAINT [PK_StudentStatuses] PRIMARY KEY CLUSTERED 
(
	[SSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'08f71ac9-313c-4845-9e4f-fd03958bcf25', N'Admin', N'ADMIN', N'e8794173-60e2-4624-9b13-804bc2e7740b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5780e683-5d0e-490a-a769-28683f21f13f', N'Scheduling', N'SCHEDULING', N'fe79e2ba-4410-4ea8-b837-c9121e9f1c6c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'64f6e1f3-ce82-4ee4-881f-5dcc02fffc0c', N'Student', N'STUDENT', N'e519888e-5129-4120-a444-0903f31027a2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c891847-ddd2-4c5c-aa13-f1c2cf698531', N'08f71ac9-313c-4845-9e4f-fd03958bcf25')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7c891847-ddd2-4c5c-aa13-f1c2cf698531', N'admin@example.com', N'ADMIN@EXAMPLE.COM', N'admin@example.com', N'ADMIN@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEJeV3HNJO3GL0H53FSExIQPcjSZkm8bFk+L0XAYh2e8Lu1BCxzxNiy4q5tZjfm6pyQ==', N'OCI26DM4TBTJJ6AMG4C643VFHFF2MY66', N'1e122574-009a-4d33-afc2-d625a879582f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (1, N'Potions', N'Practice mixing', 4, N'Core', N'DO NOT try everything you find', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (2, N'Defences Against the Dark Arts', N'Desc2', 4, N'Forbidden', N'No longer taught as a core class', 0)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (3, N'Charms', N'Desc3', 4, N'Core', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (4, N'Transfiguration', N'Desc4', 4, N'Core', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (5, N'Divination', N'Desc5', 4, N'Elective', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (7, N'History of Magic', N'Desc', 4, N'Core', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (8, N'Herbology', N'Desc', 4, N'Core', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (9, N'Apparition', N'Desc', 4, N'Elective', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (10, N'Care of Magical Creatures', N'Desc', 4, N'Elective', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (11, N'Astronomy', N'Desc', 4, N'Core', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (12, N'Arithmancy', N'Desc', 4, N'Elective', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (13, N'Ancient Runes', N'Desc', 4, N'Elective', N'input', 1)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [CreditHours], [Curriculum], [Notes], [IsActive]) VALUES (14, N'Muggle Studies', N'Desc', 4, N'Elective', N'input', 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollments] ON 

INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (1, 3, 1, CAST(N'2022-07-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (2, 3, 6, CAST(N'2022-07-01' AS Date))
INSERT [dbo].[Enrollments] ([EnrollmentId], [StudentId], [ScheduledClassId], [EnrollmentDate]) VALUES (3, 3, 8, CAST(N'2022-07-01' AS Date))
SET IDENTITY_INSERT [dbo].[Enrollments] OFF
GO
SET IDENTITY_INSERT [dbo].[ScheduledClasses] ON 

INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (1, 1, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Snape', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (2, 2, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Quirrell', N'Hogwarts', 4)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (3, 3, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Flitwick', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (4, 4, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'McGonagall', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (5, 5, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Trewlawney', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (6, 7, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Binns', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (7, 8, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Sinistra', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (8, 9, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Twycross', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (9, 10, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Kettleburn', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (10, 11, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Vector', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (11, 12, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Sprout', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (12, 13, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Babbling', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (13, 14, CAST(N'2022-09-01' AS Date), CAST(N'2023-06-30' AS Date), N'Burbage', N'Hogwarts', 1)
INSERT [dbo].[ScheduledClasses] ([ScheduledClassId], [CourseId], [StartDate], [EndDate], [InstructorName], [Location], [SCSID]) VALUES (14, 10, CAST(N'2021-09-01' AS Date), CAST(N'2022-06-30' AS Date), N'Hagrid', N'Hogwarts', 3)
SET IDENTITY_INSERT [dbo].[ScheduledClasses] OFF
GO
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] ON 

INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (1, N'Active')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (2, N'Pending')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (3, N'Completed')
INSERT [dbo].[ScheduledClassStatuses] ([SCSID], [SCSName]) VALUES (4, N'Cancelled')
SET IDENTITY_INSERT [dbo].[ScheduledClassStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (3, N'Hermione', N'Granger', N'Gryffindor', N'8 Heathgate', N'Hampstead Garden Suburb', N'NY', N'64090', N'816-876-4561', N'H.Granger@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (4, N'Percy', N'Weasley', N'Gryffindor', N'101 Main St', N'Atlanta', N'GA', N'85214', N'816-456-1234', N'P.Weasley@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (5, N'Earnie', N'MacMillan', N'Hufflepuff', N'154 Plum Rd', N'Cameron', N'MO', N'64429', N'816-946-8756', N'E.MacMillan@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (6, N'Ginny', N'Weasley', N'Gryffindor', N'339 Myrtle St', N'Oak Grove', N'MO', N'64075', N'816-789-6797', N'G.Weasley@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (7, N'Neville', N'Longbottom', N'Gryffindor', N'7012 Locus St', N'Riverside', N'MO', N'65231', N'816-351-6954', N'N.Longbottom@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (8, N'Harry', N'Potter', N'Gryffindor', N'The cupbord under the stairs, 4, Privet Dr', N'Little Whining', N'KS', N'64070', N'816-456-7890', N'H.Potter@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (9, N'Draco', N'Malfoy', N'Slytherin', N'997 Elm St', N'Oak Grove', N'MO', N'64075', N'816-568-4979', N'D.Malfoy@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (10, N'Luna', N'Lovegood', N'Ravenclaw', N'201 Grand St', N'Hamilton', N'MO', N'64644', N'816-742-6213', N'L.Lovegood@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (12, N'Oliver', N'Wood', N'Gryffindor', N'556 Pearl Ave', N'Grain Valley', N'MO', N'64029', N'816-967-8962', N'O.Wood@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (13, N'Fred', N'Weasley', N'Gryffindor', N'688 Nevada Dr', N'Hamilton', N'MO', N'64644', N'816-635-4215', N'F.Weasley@HogwartSchool.org', NULL, 2)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [House], [Address], [City], [State], [ZipCode], [Phone], [Email], [PhotoUrl], [SSID]) VALUES (14, N'George', N'Weasley', N'Gryffindor', N'688 Nevada Dr', N'Hamilton', N'MO', N'64644', N'816-491-6314', N'G.Weasley@HogwartSchool.org', NULL, 2)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentStatuses] ON 

INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (1, N'Prospect', N'A student who has inquired about taking classes at the Institution')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (2, N'Current Student', N'A student who is actively participating in classes')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (3, N'Former Student-Withdrawn', N'A student who has left the institution on their own accord')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (4, N'Former Student-Dismissed', N'A student who has left the institution at our request')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (5, N'Alumni', N'A student who has finished their coursework and left the institution')
INSERT [dbo].[StudentStatuses] ([SSID], [SSName], [SSDescription]) VALUES (6, N'Booted', N'This is what happens when you don''t go to class')
SET IDENTITY_INSERT [dbo].[StudentStatuses] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/3/2022 3:12:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_ScheduledClasses] FOREIGN KEY([ScheduledClassId])
REFERENCES [dbo].[ScheduledClasses] ([ScheduledClassId])
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_ScheduledClasses]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Students]
GO
ALTER TABLE [dbo].[ScheduledClasses]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClasses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[ScheduledClasses] CHECK CONSTRAINT [FK_ScheduledClasses_Courses]
GO
ALTER TABLE [dbo].[ScheduledClasses]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledClasses_ScheduledClassStatuses] FOREIGN KEY([SCSID])
REFERENCES [dbo].[ScheduledClassStatuses] ([SCSID])
GO
ALTER TABLE [dbo].[ScheduledClasses] CHECK CONSTRAINT [FK_ScheduledClasses_ScheduledClassStatuses]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_StudentStatuses] FOREIGN KEY([SSID])
REFERENCES [dbo].[StudentStatuses] ([SSID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_StudentStatuses]
GO
ALTER DATABASE [SAT] SET  READ_WRITE 
GO
