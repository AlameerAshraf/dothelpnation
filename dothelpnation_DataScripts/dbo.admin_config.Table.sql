USE [dothelpnation]
GO
/****** Object:  Table [dbo].[admin_config]    Script Date: 31-Jul-18 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_config](
	[key] [varchar](255) NULL,
	[value] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
