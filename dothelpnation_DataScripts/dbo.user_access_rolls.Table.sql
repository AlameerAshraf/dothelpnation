USE [dothelpnation]
GO
/****** Object:  Table [dbo].[user_access_rolls]    Script Date: 07-Aug-18 1:58:56 AM ******/
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
