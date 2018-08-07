USE [dothelpnation]
GO
/****** Object:  Table [dbo].[tours]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tours](
	[id] [int] NOT NULL,
	[dest_id] [int] NULL,
	[title] [nvarchar](450) NULL,
	[main_price] [nvarchar](200) NULL,
	[price] [nvarchar](200) NULL,
	[duration] [nvarchar](200) NULL,
	[url] [nvarchar](max) NULL,
	[stuts] [int] NULL,
	[photo] [nvarchar](255) NULL,
	[type] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
	[short_info] [nvarchar](600) NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NULL,
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
