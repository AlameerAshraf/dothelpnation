USE [dothelpnation]
GO
/****** Object:  Table [dbo].[photos_videos_sections]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photos_videos_sections](
	[id] [int] NOT NULL,
	[langkey] [varchar](255) NULL,
	[title] [varchar](355) NULL,
	[stuts] [int] NULL,
	[type] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[photos_videos_sections] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[photos_videos_sections] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[photos_videos_sections] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[photos_videos_sections] ADD  DEFAULT (NULL) FOR [type]
GO
