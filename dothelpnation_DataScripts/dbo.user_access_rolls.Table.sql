USE [dothelpnation]
GO
/****** Object:  Table [dbo].[user_access_rolls]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_access_rolls](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[roll_id] [int] NOT NULL
) ON [PRIMARY]
GO
