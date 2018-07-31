USE [dothelpnation]
GO
/****** Object:  Table [dbo].[tour_category]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tour_category](
	[id] [int] NOT NULL,
	[title] [varchar](255) NULL,
	[url] [text] NULL,
	[stuts] [varchar](20) NULL,
	[photo] [varchar](255) NULL,
	[content] [text] NULL,
	[meat_description] [text] NULL,
	[meat_keywords] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tour_category] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tour_category] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[tour_category] ADD  DEFAULT (NULL) FOR [photo]
GO
