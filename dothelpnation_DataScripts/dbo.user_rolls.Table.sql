USE [dothelpnation]
GO
/****** Object:  Table [dbo].[user_rolls]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_rolls](
	[id] [int] NOT NULL,
	[name] [varchar](300) NULL,
	[key] [varchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[user_rolls] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[user_rolls] ADD  DEFAULT (NULL) FOR [key]
GO
