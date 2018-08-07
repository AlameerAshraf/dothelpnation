USE [dothelpnation]
GO
/****** Object:  Table [dbo].[newslatter]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newslatter](
	[id] [int] NOT NULL,
	[email] [nvarchar](255) NULL,
	[stuts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[newslatter] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[newslatter] ADD  DEFAULT (NULL) FOR [stuts]
GO
