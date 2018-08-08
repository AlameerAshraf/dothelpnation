USE [dothelpnation]
GO
/****** Object:  Table [dbo].[videos]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videos](
	[id] [int] NOT NULL,
	[section_id] [int] NULL,
	[langkey] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[url] [nvarchar](max) NULL,
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
