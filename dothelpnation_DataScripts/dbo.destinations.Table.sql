USE [dothelpnation]
GO
/****** Object:  Table [dbo].[destinations]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinations](
	[id] [int] NOT NULL,
	[title] [nvarchar](400) NULL,
	[url] [nvarchar](max) NULL,
	[photo] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[short_desc] [nvarchar](500) NULL,
	[stuts] [int] NULL,
	[meat_description] [nvarchar](max) NULL,
	[meat_keywords] [nvarchar](max) NOT NULL,
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
