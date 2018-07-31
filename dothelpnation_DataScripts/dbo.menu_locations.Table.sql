USE [dothelpnation]
GO
/****** Object:  Table [dbo].[menu_locations]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu_locations](
	[id] [int] NOT NULL,
	[langkey] [varchar](155) NULL,
	[code] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[stuts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[menu_locations] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[menu_locations] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[menu_locations] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[menu_locations] ADD  DEFAULT (NULL) FOR [stuts]
GO
