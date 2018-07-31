USE [dothelpnation]
GO
/****** Object:  Table [dbo].[places]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[places](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[type] [varchar](155) NULL,
	[mohafza_id] [int] NULL,
	[url] [text] NULL,
	[num_view] [int] NULL,
 CONSTRAINT [PK__places__3213E83FF8E2D85D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[places] ADD  CONSTRAINT [DF__places__name__4F47C5E3]  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[places] ADD  CONSTRAINT [DF__places__type__503BEA1C]  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[places] ADD  CONSTRAINT [DF__places__mohafza___51300E55]  DEFAULT (NULL) FOR [mohafza_id]
GO
ALTER TABLE [dbo].[places] ADD  CONSTRAINT [DF__places__num_view__5224328E]  DEFAULT (NULL) FOR [num_view]
GO
