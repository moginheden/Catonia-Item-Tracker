USE [db858d5789ed564b0c9364a73301643bf4]
GO

/****** Object:  Table [dbo].[recipies]    Script Date: 2017-04-14 7:29:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[recipies](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[result] [int] NOT NULL,
	[resultQty] [int] NOT NULL,
	[profession] [varchar](max) NOT NULL,
	[crafterLevel] [varchar](max) NOT NULL,
 CONSTRAINT [PK_recipies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


