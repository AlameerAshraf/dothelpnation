USE [dothelpnation]
GO
/****** Object:  Table [dbo].[services]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [int] NOT NULL,
	[langkey] [varchar](55) NULL,
	[url] [text] NULL,
	[title] [varchar](500) NULL,
	[content] [text] NULL,
	[stuts] [int] NULL,
	[photo] [varchar](255) NULL,
	[meat_description] [text] NULL,
	[meat_keywords] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [photo]
GO
