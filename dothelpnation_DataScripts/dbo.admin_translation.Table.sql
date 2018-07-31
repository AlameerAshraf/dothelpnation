USE [dothelpnation]
GO
/****** Object:  Table [dbo].[admin_translation]    Script Date: 31-Jul-18 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_translation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lang_code] [varchar](100) NULL,
	[langkey] [varchar](200) NOT NULL,
	[text] [varchar](255) NULL,
 CONSTRAINT [PK__admin_tr__3213E83F841B1016] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin_translation] ADD  CONSTRAINT [DF__admin_tra__lang___3C69FB99]  DEFAULT (NULL) FOR [lang_code]
GO
ALTER TABLE [dbo].[admin_translation] ADD  CONSTRAINT [DF__admin_tran__text__3D5E1FD2]  DEFAULT (NULL) FOR [text]
GO
