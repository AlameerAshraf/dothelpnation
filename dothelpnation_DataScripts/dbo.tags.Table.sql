USE [dothelpnation]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int] NOT NULL,
	[title] [varchar](255) NULL,
	[stuts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [stuts]
GO
