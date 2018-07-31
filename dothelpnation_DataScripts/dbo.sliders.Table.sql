USE [dothelpnation]
GO
/****** Object:  Table [dbo].[sliders]    Script Date: 31-Jul-18 11:13:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sliders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[langkey] [varchar](55) NULL,
	[text_1] [varchar](300) NULL,
	[text_2] [varchar](300) NULL,
	[text_3] [text] NULL,
	[url] [text] NULL,
	[sort] [int] NULL,
	[photo] [varchar](255) NULL,
	[stuts] [varchar](50) NULL,
 CONSTRAINT [PK__sliders__3213E83F2E3ACA6C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[sliders] ADD  CONSTRAINT [DF__sliders__langkey__367C1819]  DEFAULT (NULL) FOR [langkey]
GO
ALTER TABLE [dbo].[sliders] ADD  CONSTRAINT [DF__sliders__text_1__37703C52]  DEFAULT (NULL) FOR [text_1]
GO
ALTER TABLE [dbo].[sliders] ADD  CONSTRAINT [DF__sliders__text_2__3864608B]  DEFAULT (NULL) FOR [text_2]
GO
ALTER TABLE [dbo].[sliders] ADD  CONSTRAINT [DF__sliders__sort__395884C4]  DEFAULT (NULL) FOR [sort]
GO
ALTER TABLE [dbo].[sliders] ADD  CONSTRAINT [DF__sliders__photo__3A4CA8FD]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[sliders] ADD  CONSTRAINT [DF__sliders__stuts__3B40CD36]  DEFAULT (NULL) FOR [stuts]
GO
