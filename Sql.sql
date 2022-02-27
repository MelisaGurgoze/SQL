USE [StudentDb]
GO
/****** Object:  Table [dbo].[StudentsHomework]    Script Date: 27.02.2022 16:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHomeworks](
	[Id] [int] NULL,
	[StudentsId] [int] NULL,
	[HomeworksId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Homeworks]    Script Date: 27.02.2022 09:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Homeworks](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
	[SubjectsId] [nchar](10) NULL,
	[Content]  [nchar](20) NULL,
 CONSTRAINT [PK_Homeworks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 27.02.2022 09:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votes]    Script Date: 27.02.2022 09:58:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votes](
	[Id] [int] NOT NULL,
	[UsersId] [int] NULL,
	[Point] [int] NULL,
	[HomeworksId] [int] NULL,
 CONSTRAINT [PK_Votes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Votes]  WITH CHECK ADD  CONSTRAINT [Point] CHECK  (([Point]>=(1) AND [Point]<=(5)))
GO
ALTER TABLE [dbo].[Votes] CHECK CONSTRAINT [Point]
GO
