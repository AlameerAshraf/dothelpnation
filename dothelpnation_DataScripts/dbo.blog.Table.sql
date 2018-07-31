USE [dothelpnation]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [varchar](255) NULL,
	[section_id] [int] NULL,
	[title] [varchar](400) NULL,
	[url] [text] NULL,
	[address] [varchar](300) NULL,
	[place_id] [int] NULL,
	[city_id] [int] NULL,
	[map_address] [varchar](255) NULL,
	[map_radius] [varchar](55) NULL,
	[map_latitude] [varchar](100) NULL,
	[map_longitude] [varchar](100) NULL,
	[photo] [varchar](255) NULL,
	[bloodtype] [varchar](255) NULL,
	[content] [text] NULL,
	[short_desc] [varchar](500) NULL,
	[type] [varchar](10) NULL,
	[user_id] [int] NULL,
	[stuts] [int] NULL,
	[meat_description] [text] NULL,
	[meat_keywords] [text] NULL,
	[publish_date] [date] NULL,
	[time] [varchar](155) NULL,
	[vists] [int] NULL,
 CONSTRAINT [PK__blog__3213E83F7EE0FE29] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__langkey__5FB337D6]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__section_id__60A75C0F]  DEFAULT (NULL) FOR [section_id]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__title__619B8048]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__address__628FA481]  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__place_id__6383C8BA]  DEFAULT (NULL) FOR [place_id]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__city_id__6477ECF3]  DEFAULT (NULL) FOR [city_id]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__map_addres__656C112C]  DEFAULT (NULL) FOR [map_address]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__map_radius__66603565]  DEFAULT (NULL) FOR [map_radius]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__map_latitu__6754599E]  DEFAULT (NULL) FOR [map_latitude]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__map_longit__68487DD7]  DEFAULT (NULL) FOR [map_longitude]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__photo__693CA210]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__bloodtype__6A30C649]  DEFAULT (NULL) FOR [bloodtype]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__short_desc__6B24EA82]  DEFAULT (NULL) FOR [short_desc]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__user_id__6D0D32F4]  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__stuts__6E01572D]  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__publish_da__6EF57B66]  DEFAULT (NULL) FOR [publish_date]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__time__6FE99F9F]  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[blog] ADD  CONSTRAINT [DF__blog__vists__70DDC3D8]  DEFAULT (NULL) FOR [vists]
GO
ALTER TABLE [dbo].[blog]  WITH CHECK ADD  CONSTRAINT [CK__blog__type__6C190EBB] CHECK  (([type]='khodbalck' OR [type]='tellme' OR [type]='blacklist' OR [type]='helppet' OR [type]='donateblood' OR [type]='viewhelp' OR [type]='helprequest' OR [type]='found' OR [type]='missing'))
GO
ALTER TABLE [dbo].[blog] CHECK CONSTRAINT [CK__blog__type__6C190EBB]
GO
