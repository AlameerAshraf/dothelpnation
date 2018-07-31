USE [dothelpnation]
GO
/****** Object:  Table [dbo].[videos]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videos](
	[id] [int] NOT NULL,
	[section_id] [int] NULL,
	[langkey] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[url] [text] NULL,
	[stuts] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [section_id]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[videos] ADD  DEFAULT (NULL) FOR [stuts]
GO
