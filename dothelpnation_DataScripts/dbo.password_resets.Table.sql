USE [dothelpnation]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[password_resets] ADD  DEFAULT (NULL) FOR [created_at]
GO
