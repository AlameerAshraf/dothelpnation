USE [dothelpnation]
GO
/****** Object:  Table [dbo].[ad_photos]    Script Date: 31-Jul-18 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ad_photos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad_id] [int] NOT NULL,
	[photo] [varchar](300) NOT NULL,
 CONSTRAINT [PK__ad_photo__3213E83F4048546E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
