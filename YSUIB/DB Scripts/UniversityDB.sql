USE [master]
GO
/****** Object:  Database [University]    Script Date: 22.03.2018 19:04:56 ******/
CREATE DATABASE [University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University', FILENAME = N'E:\Development\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\University.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University_log', FILENAME = N'E:\Development\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\University_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University] SET ARITHABORT OFF 
GO
ALTER DATABASE [University] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [University] SET  MULTI_USER 
GO
ALTER DATABASE [University] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [University] SET DELAYED_DURABILITY = DISABLED 
GO
USE [University]
GO
/****** Object:  Table [dbo].[Ambion]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ambion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FacultyId] [bigint] NULL,
	[NameT] [bigint] NULL,
	[ManagerWorkerId] [bigint] NULL,
 CONSTRAINT [PK_Ambions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Article]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[PictureId] [bigint] NULL,
	[StoredDateTime] [datetime] NOT NULL,
	[PublishDateTime] [datetime] NOT NULL,
	[LastEditDateTime] [datetime] NULL,
	[Views] [bigint] NOT NULL,
	[TitleT] [bigint] NOT NULL,
	[DescribtionTT] [bigint] NULL,
	[TextTT] [bigint] NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticleCategory]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
 CONSTRAINT [PK_ArticleCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileId] [bigint] NOT NULL,
	[StoredDateTime] [datetime] NULL,
	[CategoryId] [bigint] NOT NULL,
	[NameT] [bigint] NOT NULL,
	[DescribtionTT] [bigint] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookCategory]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
 CONSTRAINT [PK_BookCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classroom](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
	[FacultyId] [bigint] NOT NULL,
	[PictureId] [bigint] NULL,
 CONSTRAINT [PK_Classrooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SpecializationId] [bigint] NOT NULL,
	[StartYear] [date] NOT NULL,
	[EndYear] [date] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DekanWorkerId] [bigint] NULL,
	[NameT] [bigint] NULL,
 CONSTRAINT [PK_Facultyes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[File]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](2048) NOT NULL,
	[StoredDateTime] [datetime] NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Icon]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Icon](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_IcoFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](2) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IconId] [bigint] NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CourseId] [bigint] NOT NULL,
	[ProfessorId] [bigint] NOT NULL,
	[Year] [int] NOT NULL,
	[Semester] [int] NOT NULL,
	[WeekId] [bigint] NOT NULL,
	[WeekDayId] [bigint] NOT NULL,
	[Hour] [int] NOT NULL,
	[ClassroomId] [bigint] NOT NULL,
	[SubjectId] [bigint] NOT NULL,
 CONSTRAINT [PK_Lessons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Link]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Link](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Controller] [nvarchar](50) NULL,
	[Action] [nvarchar](50) NULL,
	[OptionsJSON] [nvarchar](max) NULL,
	[ExternalUrl] [nvarchar](2048) NULL,
 CONSTRAINT [PK_Link] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItem](
	[Id] [bigint] NOT NULL,
	[NameT] [bigint] NOT NULL,
	[LinkId] [bigint] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Picture]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FileId] [bigint] NOT NULL,
	[AltT] [bigint] NOT NULL,
	[StoredDateTime] [datetime] NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professor]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[Id] [bigint] NOT NULL,
	[WorkerId] [bigint] NOT NULL,
	[DegreeTree] [bigint] NOT NULL,
	[AmbionId] [bigint] NOT NULL,
 CONSTRAINT [PK_Professors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingCriterion]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingCriterion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
 CONSTRAINT [PK_RatingCriteria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FacultyId] [bigint] NOT NULL,
	[NameT] [bigint] NOT NULL,
 CONSTRAINT [PK_Specializations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CourseId] [bigint] NOT NULL,
	[StartYear] [date] NOT NULL,
	[EndYear] [date] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
	[ShortNameT] [bigint] NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Translation]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Translation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TranslationEntry]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranslationEntry](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TranslationId] [bigint] NOT NULL,
	[LanguageId] [bigint] NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TranslationEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TranslationText]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranslationText](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TranslationText] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TranslationTextEntry]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TranslationTextEntry](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TranslationTextId] [bigint] NOT NULL,
	[LanguageId] [bigint] NOT NULL,
	[Value] [ntext] NOT NULL,
 CONSTRAINT [PK_TranslationTextEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tree]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tree](
	[Id] [bigint] NOT NULL,
	[ValueT] [bigint] NOT NULL,
 CONSTRAINT [PK_Tree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](2048) NOT NULL,
	[Password] [nvarchar](1024) NOT NULL,
	[FirstNameT] [bigint] NOT NULL,
	[MiddleNameT] [bigint] NOT NULL,
	[LastNameT] [bigint] NOT NULL,
	[BirthDate] [date] NOT NULL,
	[RegisterDateTime] [datetime] NOT NULL,
	[LastLoginDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRating]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRating](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FromUserId] [bigint] NOT NULL,
	[ToUserId] [bigint] NOT NULL,
	[CriterionId] [bigint] NOT NULL,
	[RatePercent] [float] NOT NULL,
 CONSTRAINT [PK_UserRating] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRequest]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRequest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[RequestDateTime] [datetime] NOT NULL,
	[RequestUrl] [nvarchar](2048) NOT NULL,
	[Ip] [nvarchar](15) NOT NULL,
	[Browser] [nvarchar](255) NULL,
 CONSTRAINT [PK_UserRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Week]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
 CONSTRAINT [PK_Weeks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WeekDay]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeekDay](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[NameT] [bigint] NOT NULL,
 CONSTRAINT [PK_WeekDays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Worker]    Script Date: 22.03.2018 19:04:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Article] ADD  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Ambion]  WITH CHECK ADD  CONSTRAINT [FK_Ambion_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Ambion] CHECK CONSTRAINT [FK_Ambion_Faculty]
GO
ALTER TABLE [dbo].[Ambion]  WITH CHECK ADD  CONSTRAINT [FK_Ambion_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Ambion] CHECK CONSTRAINT [FK_Ambion_Translation]
GO
ALTER TABLE [dbo].[Ambion]  WITH CHECK ADD  CONSTRAINT [FK_Ambion_Worker] FOREIGN KEY([ManagerWorkerId])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[Ambion] CHECK CONSTRAINT [FK_Ambion_Worker]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_ArticleCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ArticleCategory] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_ArticleCategory]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Picture] FOREIGN KEY([PictureId])
REFERENCES [dbo].[Picture] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Picture]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Translation] FOREIGN KEY([TitleT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Translation]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_TranslationText] FOREIGN KEY([DescribtionTT])
REFERENCES [dbo].[TranslationText] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_TranslationText]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_TranslationText1] FOREIGN KEY([TextTT])
REFERENCES [dbo].[TranslationText] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_TranslationText1]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_User]
GO
ALTER TABLE [dbo].[ArticleCategory]  WITH CHECK ADD  CONSTRAINT [FK_ArticleCategory_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[ArticleCategory] CHECK CONSTRAINT [FK_ArticleCategory_Translation]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_BookCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[BookCategory] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_BookCategory]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_File] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_File]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Translation]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_TranslationText] FOREIGN KEY([DescribtionTT])
REFERENCES [dbo].[TranslationText] ([Id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_TranslationText]
GO
ALTER TABLE [dbo].[BookCategory]  WITH CHECK ADD  CONSTRAINT [FK_BookCategory_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[BookCategory] CHECK CONSTRAINT [FK_BookCategory_Translation]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_Faculty]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_Picture] FOREIGN KEY([PictureId])
REFERENCES [dbo].[Picture] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_Picture]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_Translation]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Specialization] FOREIGN KEY([SpecializationId])
REFERENCES [dbo].[Specialization] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Specialization]
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD  CONSTRAINT [FK_Faculty_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Faculty] CHECK CONSTRAINT [FK_Faculty_Translation]
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD  CONSTRAINT [FK_Faculty_Worker1] FOREIGN KEY([DekanWorkerId])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[Faculty] CHECK CONSTRAINT [FK_Faculty_Worker1]
GO
ALTER TABLE [dbo].[Icon]  WITH CHECK ADD  CONSTRAINT [FK_Icon_File] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([Id])
GO
ALTER TABLE [dbo].[Icon] CHECK CONSTRAINT [FK_Icon_File]
GO
ALTER TABLE [dbo].[Languages]  WITH CHECK ADD  CONSTRAINT [FK_Languages_Icon] FOREIGN KEY([IconId])
REFERENCES [dbo].[Icon] ([Id])
GO
ALTER TABLE [dbo].[Languages] CHECK CONSTRAINT [FK_Languages_Icon]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Classroom]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Course]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Professor] FOREIGN KEY([ProfessorId])
REFERENCES [dbo].[Professor] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Professor]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subject] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Subject]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Week] FOREIGN KEY([WeekId])
REFERENCES [dbo].[Week] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Week]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_WeekDay] FOREIGN KEY([WeekDayId])
REFERENCES [dbo].[WeekDay] ([Id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_WeekDay]
GO
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_Link] FOREIGN KEY([LinkId])
REFERENCES [dbo].[Link] ([Id])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_MenuItem_Link]
GO
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_MenuItem_Translation]
GO
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK_Picture_File] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([Id])
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK_Picture_File]
GO
ALTER TABLE [dbo].[Professor]  WITH CHECK ADD  CONSTRAINT [FK_Professor_Ambion] FOREIGN KEY([AmbionId])
REFERENCES [dbo].[Ambion] ([Id])
GO
ALTER TABLE [dbo].[Professor] CHECK CONSTRAINT [FK_Professor_Ambion]
GO
ALTER TABLE [dbo].[Professor]  WITH CHECK ADD  CONSTRAINT [FK_Professor_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([Id])
GO
ALTER TABLE [dbo].[Professor] CHECK CONSTRAINT [FK_Professor_Worker]
GO
ALTER TABLE [dbo].[RatingCriterion]  WITH CHECK ADD  CONSTRAINT [FK_RatingCriterion_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[RatingCriterion] CHECK CONSTRAINT [FK_RatingCriterion_Translation]
GO
ALTER TABLE [dbo].[Specialization]  WITH CHECK ADD  CONSTRAINT [FK_Specialization_Faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([Id])
GO
ALTER TABLE [dbo].[Specialization] CHECK CONSTRAINT [FK_Specialization_Faculty]
GO
ALTER TABLE [dbo].[Specialization]  WITH CHECK ADD  CONSTRAINT [FK_Specialization_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Specialization] CHECK CONSTRAINT [FK_Specialization_Translation]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Course]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Translation]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Translation1] FOREIGN KEY([ShortNameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Translation1]
GO
ALTER TABLE [dbo].[TranslationEntry]  WITH CHECK ADD  CONSTRAINT [FK_Translation_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
GO
ALTER TABLE [dbo].[TranslationEntry] CHECK CONSTRAINT [FK_Translation_Languages]
GO
ALTER TABLE [dbo].[TranslationEntry]  WITH CHECK ADD  CONSTRAINT [FK_TranslationEntry_Translation] FOREIGN KEY([TranslationId])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[TranslationEntry] CHECK CONSTRAINT [FK_TranslationEntry_Translation]
GO
ALTER TABLE [dbo].[TranslationTextEntry]  WITH CHECK ADD  CONSTRAINT [FK_TranslationText_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([Id])
GO
ALTER TABLE [dbo].[TranslationTextEntry] CHECK CONSTRAINT [FK_TranslationText_Languages]
GO
ALTER TABLE [dbo].[TranslationTextEntry]  WITH CHECK ADD  CONSTRAINT [FK_TranslationTextEntry_TranslationText] FOREIGN KEY([TranslationTextId])
REFERENCES [dbo].[TranslationText] ([Id])
GO
ALTER TABLE [dbo].[TranslationTextEntry] CHECK CONSTRAINT [FK_TranslationTextEntry_TranslationText]
GO
ALTER TABLE [dbo].[Tree]  WITH CHECK ADD  CONSTRAINT [FK_Tree_Translation] FOREIGN KEY([ValueT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Tree] CHECK CONSTRAINT [FK_Tree_Translation]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Translation] FOREIGN KEY([FirstNameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Translation]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Translation1] FOREIGN KEY([MiddleNameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Translation1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Translation2] FOREIGN KEY([LastNameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Translation2]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [FK_UserRating_RatingCriterion] FOREIGN KEY([CriterionId])
REFERENCES [dbo].[RatingCriterion] ([Id])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [FK_UserRating_RatingCriterion]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [FK_UserRating_User] FOREIGN KEY([FromUserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [FK_UserRating_User]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [FK_UserRating_User1] FOREIGN KEY([ToUserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [FK_UserRating_User1]
GO
ALTER TABLE [dbo].[UserRequest]  WITH CHECK ADD  CONSTRAINT [FK_UserRequest_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRequest] CHECK CONSTRAINT [FK_UserRequest_User]
GO
ALTER TABLE [dbo].[Week]  WITH CHECK ADD  CONSTRAINT [FK_Week_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[Week] CHECK CONSTRAINT [FK_Week_Translation]
GO
ALTER TABLE [dbo].[WeekDay]  WITH CHECK ADD  CONSTRAINT [FK_WeekDay_Translation] FOREIGN KEY([NameT])
REFERENCES [dbo].[Translation] ([Id])
GO
ALTER TABLE [dbo].[WeekDay] CHECK CONSTRAINT [FK_WeekDay_Translation]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_User]
GO
USE [master]
GO
ALTER DATABASE [University] SET  READ_WRITE 
GO
