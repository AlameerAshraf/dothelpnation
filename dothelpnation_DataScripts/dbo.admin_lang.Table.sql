USE [dothelpnation]
GO
/****** Object:  Table [dbo].[admin_lang]    Script Date: 31-Jul-18 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_lang](
	[id] [int] NOT NULL,
	[code] [varchar](155) NOT NULL,
	[name] [varchar](200) NOT NULL,
	[dir] [varchar](100) NULL,
	[stuts] [int] NULL,
	[photo] [varchar](300) NULL,
	[is_main] [varchar](155) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [dir]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [stuts]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[admin_lang] ADD  DEFAULT (NULL) FOR [is_main]
GO
