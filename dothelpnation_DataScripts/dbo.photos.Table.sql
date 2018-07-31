USE [dothelpnation]
GO
/****** Object:  Table [dbo].[photos]    Script Date: 31-Jul-18 11:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photos](
	[id] [int] NOT NULL,
	[section_id] [int] NULL,
	[langkey] [varchar](255) NULL,
	[photo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [section_id]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [langkey]
GO
