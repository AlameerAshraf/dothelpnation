USE [dothelpnation]
GO
/****** Object:  Table [dbo].[admin_config]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_config](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
 CONSTRAINT [key] UNIQUE NONCLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
