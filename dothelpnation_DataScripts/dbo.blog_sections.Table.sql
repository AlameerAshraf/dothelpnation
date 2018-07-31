USE [dothelpnation]
GO
/****** Object:  Table [dbo].[blog_sections]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_sections](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[url] [text] NULL,
	[stuts] [varchar](20) NULL,
	[photo] [varchar](255) NULL,
	[content] [text] NULL,
	[meat_description] [text] NULL,
	[meat_keywords] [text] NULL,
 CONSTRAINT [PK__blog_sec__3213E83F33F034F5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__langk__72C60C4A]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__title__73BA3083]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__stuts__74AE54BC]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__photo__75A278F5]  DEFAULT (NULL) FOR [photo]
GO
