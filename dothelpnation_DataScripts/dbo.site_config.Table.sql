USE [dothelpnation]
GO
/****** Object:  Table [dbo].[site_config]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_config](
	[key] [varchar](255) NOT NULL,
	[value] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
