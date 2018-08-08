USE [dothelpnation]
GO
/****** Object:  Table [dbo].[ad_photos]    Script Date: 07-Aug-18 1:58:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ad_photos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad_id] [int] NOT NULL,
	[photo] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK__ad_photo__3213E83FEC5321F7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ad_photos]  WITH CHECK ADD  CONSTRAINT [FK_ad_photos_blog] FOREIGN KEY([id])
REFERENCES [dbo].[blog] ([id])
GO
ALTER TABLE [dbo].[ad_photos] CHECK CONSTRAINT [FK_ad_photos_blog]
GO
