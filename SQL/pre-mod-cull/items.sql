USE [db858d5789ed564b0c9364a73301643bf4]
GO

/****** Object:  Table [dbo].[items]    Script Date: 2017-04-14 7:28:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[items](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cost] [int] NOT NULL,
	[usable] [bit] NOT NULL,
 CONSTRAINT [PK_loot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_loot_description]  DEFAULT ('') FOR [description]
GO

ALTER TABLE [dbo].[items] ADD  CONSTRAINT [DF_loot_qty]  DEFAULT ((0)) FOR [cost]
GO


