USE [dothelpnation]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menus](
	[id] [int] NOT NULL,
	[location_id] [int] NULL,
	[langkey] [varchar](155) NULL,
	[parent_id] [int] NULL,
	[title] [varchar](300) NULL,
	[stuts] [int] NULL,
	[url] [text] NULL,
	[sort] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT (NULL) FOR [location_id]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT (NULL) FOR [sort]
GO
