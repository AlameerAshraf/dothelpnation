USE [dothelpnation]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [varchar](255) NOT NULL,
	[token] [varchar](255) NOT NULL,
	[created_at] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[password_resets] ADD  DEFAULT (NULL) FOR [created_at]
GO
