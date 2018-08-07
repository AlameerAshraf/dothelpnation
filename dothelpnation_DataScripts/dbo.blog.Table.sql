USE [dothelpnation]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [nvarchar](255) NULL,
	[section_id] [int] NULL,
	[title] [nvarchar](400) NULL,
	[url] [varchar](max) NULL,
	[address] [nvarchar](300) NULL,
	[place_id] [int] NULL,
	[city_id] [int] NULL,
	[map_address] [nvarchar](255) NULL,
	[map_radius] [nvarchar](55) NULL,
	[map_latitude] [nvarchar](100) NULL,
	[map_longitude] [nvarchar](100) NULL,
	[photo] [nvarchar](255) NULL,
	[bloodtype] [nvarchar](255) NULL,
	[content] [nvarchar](max) NULL,
	[short_desc] [nvarchar](500) NULL,
	[type] [nvarchar](10) NULL,
	[user_id] [int] NULL,
	[stuts] [int] NULL,
	[meat_description] [nvarchar](500) NULL,
	[meat_keywords] [nvarchar](max) NULL,
	[publish_date] [date] NULL,
	[time] [nvarchar](155) NULL,
	[vists] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD  CONSTRAINT [FK_blog_blog_sections] FOREIGN KEY([section_id])
REFERENCES [dbo].[blog_sections] ([id])
GO
ALTER TABLE [dbo].[blog] CHECK CONSTRAINT [FK_blog_blog_sections]
GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD  CONSTRAINT [FK_blog_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[blog] CHECK CONSTRAINT [FK_blog_users]
GO
