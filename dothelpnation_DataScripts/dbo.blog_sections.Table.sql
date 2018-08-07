USE [dothelpnation]
GO
/****** Object:  Table [dbo].[blog_sections]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog_sections](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[url] [nvarchar](max) NULL,
	[stuts] [nvarchar](20) NULL,
	[photo] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NULL,
 CONSTRAINT [PK__blog_sec__3213E83F572CDC8A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__langk__5629CD9C]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__title__571DF1D5]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__stuts__5812160E]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[blog_sections] ADD  CONSTRAINT [DF__blog_sect__photo__59063A47]  DEFAULT (NULL) FOR [photo]
GO
