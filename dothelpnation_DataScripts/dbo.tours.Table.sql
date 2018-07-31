USE [dothelpnation]
GO
/****** Object:  Table [dbo].[tours]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tours](
	[id] [int] NOT NULL,
	[dest_id] [int] NULL,
	[title] [varchar](450) NULL,
	[main_price] [varchar](200) NULL,
	[price] [varchar](200) NULL,
	[duration] [varchar](200) NULL,
	[url] [text] NULL,
	[stuts] [int] NULL,
	[photo] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[content] [text] NULL,
	[short_info] [varchar](600) NULL,
	[meat_description] [text] NULL,
	[meat_keywords] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [dest_id]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [main_price]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [price]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [duration]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[tours] ADD  DEFAULT (NULL) FOR [short_info]
GO
