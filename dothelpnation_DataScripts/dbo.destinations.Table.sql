USE [dothelpnation]
GO
/****** Object:  Table [dbo].[destinations]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinations](
	[id] [int] NOT NULL,
	[title] [varchar](400) NULL,
	[url] [text] NULL,
	[photo] [varchar](255) NULL,
	[content] [text] NULL,
	[short_desc] [varchar](500) NULL,
	[stuts] [int] NULL,
	[meat_description] [text] NULL,
	[meat_keywords] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [short_desc]
GO
ALTER TABLE [dbo].[destinations] ADD  DEFAULT (NULL) FOR [stuts]
GO
