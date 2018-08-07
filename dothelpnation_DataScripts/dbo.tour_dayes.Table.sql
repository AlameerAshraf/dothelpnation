USE [dothelpnation]
GO
/****** Object:  Table [dbo].[tour_dayes]    Script Date: 07-Aug-18 1:58:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tour_dayes](
	[id] [int] NOT NULL,
	[tour_id] [int] NULL,
	[sort_day] [int] NULL,
	[photo] [nvarchar](255) NOT NULL,
	[content] [nvarchar](max) NULL,
	[title] [nvarchar](355) NULL,
	[price_1] [nvarchar](255) NULL,
	[price_2] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [tour_id]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [sort_day]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [price_1]
GO
ALTER TABLE [dbo].[tour_dayes] ADD  DEFAULT (NULL) FOR [price_2]
GO
