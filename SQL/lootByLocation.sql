USE [db858d5789ed564b0c9364a73301643bf4]
GO

/****** Object:  Table [dbo].[lootByLocation]    Script Date: 2017-04-14 7:28:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lootByLocation](
	[id] [int] NOT NULL,
	[location] [varchar](50) NOT NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_lootByLocation] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[location] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


